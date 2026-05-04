import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class NseApiClient {
  late final Dio _dio;
  String? _cookies;
  DateTime? _lastSessionRefresh;

  NseApiClient() {
    _dio = Dio(BaseOptions(
      baseUrl: 'https://www.nseindia.com/api',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
        'Accept': '*/*',
        'Accept-Encoding': 'gzip, deflate, br',
        'Referer': 'https://www.nseindia.com/',
      },
    ));

    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        await _ensureSession();
        if (_cookies != null) {
          options.headers['Cookie'] = _cookies;
        }
        return handler.next(options);
      },
      onError: (e, handler) async {
        if (e.response?.statusCode == 401 || e.response?.statusCode == 403) {
          debugPrint('NSE Session expired, refreshing...');
          await _refreshSession();
          return handler.resolve(await _retry(e.requestOptions));
        }
        return handler.next(e);
      },
    ));
  }

  Future<void> _ensureSession() async {
    if (_cookies == null || _lastSessionRefresh == null || 
        DateTime.now().difference(_lastSessionRefresh!) > const Duration(minutes: 10)) {
      await _refreshSession();
    }
  }

  Future<void> _refreshSession() async {
    try {
      final response = await Dio().get(
        'https://www.nseindia.com/',
        options: Options(headers: {
          'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
        }),
      );
      
      final rawCookies = response.headers['set-cookie'];
      if (rawCookies != null) {
        _cookies = rawCookies.map((c) => c.split(';').first).join('; ');
        _lastSessionRefresh = DateTime.now();
        debugPrint('NSE Session Refreshed Successfully');
      }
    } catch (e) {
      debugPrint('Failed to refresh NSE session: $e');
    }
  }

  Future<Response> _retry(RequestOptions requestOptions) {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers..['Cookie'] = _cookies,
    );
    return _dio.request(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }

  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _dio.get(path, queryParameters: queryParameters);
  }
}
