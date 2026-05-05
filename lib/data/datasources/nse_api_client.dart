import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class NseApiClient {
  static final NseApiClient _instance = NseApiClient._internal();
  factory NseApiClient() => _instance;
  NseApiClient._internal();

  late final Dio _dio;
  String? _sessionCookie;
  DateTime? _cookieExpiry;
  bool _isInitialized = false;
  final _initLock = Completer<void>();

  // NSE HEADERS — must match a real browser exactly
  static const Map<String, String> _nseHeaders = {
    'User-Agent': 'Mozilla/5.0 (Linux; Android 13; Samsung) '
        'AppleWebKit/537.36 (KHTML, like Gecko) '
        'Chrome/120.0.0.0 Mobile Safari/537.36',
    'Accept': '*/*',
    'Accept-Language': 'en-US,en;q=0.9',
    'Accept-Encoding': 'gzip, deflate, br',
    'Referer': 'https://www.nseindia.com/',
    'Origin': 'https://www.nseindia.com',
    'Connection': 'keep-alive',
    'sec-ch-ua': '"Not_A Brand";v="8", "Chromium";v="120"',
    'sec-ch-ua-mobile': '?1',
    'sec-ch-ua-platform': '"Android"',
    'Sec-Fetch-Dest': 'empty',
    'Sec-Fetch-Mode': 'cors',
    'Sec-Fetch-Site': 'same-origin',
    'Cache-Control': 'no-cache',
    'Pragma': 'no-cache',
  };

  Future<void> initialize() async {
    if (_isInitialized) return;
    
    _dio = Dio(BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 15),
      headers: _nseHeaders,
      followRedirects: true,
      maxRedirects: 5,
      validateStatus: (status) => status != null && status < 500,
    ));

    // Add cookie persistence interceptor
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        if (_sessionCookie != null) {
          options.headers['Cookie'] = _sessionCookie!;
        }
        handler.next(options);
      },
      onResponse: (response, handler) {
        // Extract and store cookies from response
        final setCookie = response.headers['set-cookie'];
        if (setCookie != null && setCookie.isNotEmpty) {
          _sessionCookie = setCookie
              .map((c) => c.split(';').first)
              .join('; ');
          _cookieExpiry = DateTime.now().add(const Duration(minutes: 30));
        }
        handler.next(response);
      },
    ));

    await _refreshSession();
    _isInitialized = true;
  }

  // Step 1: Visit NSE homepage to get session cookie
  Future<void> _refreshSession() async {
    try {
      debugPrint('[NSE] Refreshing session cookie...');
      
      // First hit — homepage to get initial cookies
      await _dio.get('https://www.nseindia.com');
      await Future.delayed(const Duration(milliseconds: 500));
      
      // Second hit — a common page to establish valid session
      await _dio.get('https://www.nseindia.com/market-data/live-equity-market');
      await Future.delayed(const Duration(milliseconds: 300));
      
      debugPrint('[NSE] Session cookie obtained: '
          '${_sessionCookie?.substring(0, min(30, _sessionCookie?.length ?? 0))}...');
    } catch (e) {
      debugPrint('[NSE] Session refresh failed: $e');
      // Continue anyway — will use fallback APIs
    }
  }

  // Check if session cookie is still valid
  bool get _isSessionValid =>
      _sessionCookie != null &&
      _cookieExpiry != null &&
      DateTime.now().isBefore(_cookieExpiry!);

  // Main NSE GET with auto session refresh
  Future<Response?> nseGet(String endpoint) async {
    if (!_isSessionValid) {
      await _refreshSession();
    }

    try {
      final response = await _dio.get(
        'https://www.nseindia.com/api/$endpoint',
        options: Options(
          headers: {
            ..._nseHeaders,
            if (_sessionCookie != null) 'Cookie': _sessionCookie!,
          },
          responseType: ResponseType.json,
        ),
      );

      if (response.statusCode == 401 || response.statusCode == 403) {
        debugPrint('[NSE] Auth failed ($endpoint), refreshing session...');
        await _refreshSession();
        // Retry once after refresh
        return await _dio.get('https://www.nseindia.com/api/$endpoint');
      }

      return response;
    } catch (e) {
      debugPrint('[NSE] API error for $endpoint: $e');
      return null;
    }
  }
}

// Helper function for min
int min(int a, int b) => a < b ? a : b;
