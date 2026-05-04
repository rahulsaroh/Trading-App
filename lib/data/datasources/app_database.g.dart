// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
mixin _$WatchlistDaoMixin on DatabaseAccessor<AppDatabase> {
  $WatchlistNamesTable get watchlistNames => attachedDatabase.watchlistNames;
  $WatchlistItemsTable get watchlistItems => attachedDatabase.watchlistItems;
  $AlertsTable get alerts => attachedDatabase.alerts;
  WatchlistDaoManager get managers => WatchlistDaoManager(this);
}

class WatchlistDaoManager {
  final _$WatchlistDaoMixin _db;
  WatchlistDaoManager(this._db);
  $$WatchlistNamesTableTableManager get watchlistNames =>
      $$WatchlistNamesTableTableManager(
        _db.attachedDatabase,
        _db.watchlistNames,
      );
  $$WatchlistItemsTableTableManager get watchlistItems =>
      $$WatchlistItemsTableTableManager(
        _db.attachedDatabase,
        _db.watchlistItems,
      );
  $$AlertsTableTableManager get alerts =>
      $$AlertsTableTableManager(_db.attachedDatabase, _db.alerts);
}

class $StocksTable extends Stocks with TableInfo<$StocksTable, Stock> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StocksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
    'symbol',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _exchangeMeta = const VerificationMeta(
    'exchange',
  );
  @override
  late final GeneratedColumn<String> exchange = GeneratedColumn<String>(
    'exchange',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currentPriceMeta = const VerificationMeta(
    'currentPrice',
  );
  @override
  late final GeneratedColumn<double> currentPrice = GeneratedColumn<double>(
    'current_price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _previousCloseMeta = const VerificationMeta(
    'previousClose',
  );
  @override
  late final GeneratedColumn<double> previousClose = GeneratedColumn<double>(
    'previous_close',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dayHighMeta = const VerificationMeta(
    'dayHigh',
  );
  @override
  late final GeneratedColumn<double> dayHigh = GeneratedColumn<double>(
    'day_high',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dayLowMeta = const VerificationMeta('dayLow');
  @override
  late final GeneratedColumn<double> dayLow = GeneratedColumn<double>(
    'day_low',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _volumeMeta = const VerificationMeta('volume');
  @override
  late final GeneratedColumn<double> volume = GeneratedColumn<double>(
    'volume',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _marketCapMeta = const VerificationMeta(
    'marketCap',
  );
  @override
  late final GeneratedColumn<double> marketCap = GeneratedColumn<double>(
    'market_cap',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sectorMeta = const VerificationMeta('sector');
  @override
  late final GeneratedColumn<String> sector = GeneratedColumn<String>(
    'sector',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _industryMeta = const VerificationMeta(
    'industry',
  );
  @override
  late final GeneratedColumn<String> industry = GeneratedColumn<String>(
    'industry',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _peRatioMeta = const VerificationMeta(
    'peRatio',
  );
  @override
  late final GeneratedColumn<double> peRatio = GeneratedColumn<double>(
    'pe_ratio',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pbRatioMeta = const VerificationMeta(
    'pbRatio',
  );
  @override
  late final GeneratedColumn<double> pbRatio = GeneratedColumn<double>(
    'pb_ratio',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dividendYieldMeta = const VerificationMeta(
    'dividendYield',
  );
  @override
  late final GeneratedColumn<double> dividendYield = GeneratedColumn<double>(
    'dividend_yield',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _betaMeta = const VerificationMeta('beta');
  @override
  late final GeneratedColumn<double> beta = GeneratedColumn<double>(
    'beta',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fiftyTwoWeekHighMeta = const VerificationMeta(
    'fiftyTwoWeekHigh',
  );
  @override
  late final GeneratedColumn<double> fiftyTwoWeekHigh = GeneratedColumn<double>(
    'fifty_two_week_high',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fiftyTwoWeekLowMeta = const VerificationMeta(
    'fiftyTwoWeekLow',
  );
  @override
  late final GeneratedColumn<double> fiftyTwoWeekLow = GeneratedColumn<double>(
    'fifty_two_week_low',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastUpdatedMeta = const VerificationMeta(
    'lastUpdated',
  );
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
    'last_updated',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: Constant(true),
  );
  @override
  List<GeneratedColumn> get $columns => [
    symbol,
    name,
    exchange,
    currentPrice,
    previousClose,
    dayHigh,
    dayLow,
    volume,
    marketCap,
    sector,
    industry,
    peRatio,
    pbRatio,
    dividendYield,
    beta,
    fiftyTwoWeekHigh,
    fiftyTwoWeekLow,
    lastUpdated,
    isActive,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'stocks';
  @override
  VerificationContext validateIntegrity(
    Insertable<Stock> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('symbol')) {
      context.handle(
        _symbolMeta,
        symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta),
      );
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('exchange')) {
      context.handle(
        _exchangeMeta,
        exchange.isAcceptableOrUnknown(data['exchange']!, _exchangeMeta),
      );
    } else if (isInserting) {
      context.missing(_exchangeMeta);
    }
    if (data.containsKey('current_price')) {
      context.handle(
        _currentPriceMeta,
        currentPrice.isAcceptableOrUnknown(
          data['current_price']!,
          _currentPriceMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_currentPriceMeta);
    }
    if (data.containsKey('previous_close')) {
      context.handle(
        _previousCloseMeta,
        previousClose.isAcceptableOrUnknown(
          data['previous_close']!,
          _previousCloseMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_previousCloseMeta);
    }
    if (data.containsKey('day_high')) {
      context.handle(
        _dayHighMeta,
        dayHigh.isAcceptableOrUnknown(data['day_high']!, _dayHighMeta),
      );
    } else if (isInserting) {
      context.missing(_dayHighMeta);
    }
    if (data.containsKey('day_low')) {
      context.handle(
        _dayLowMeta,
        dayLow.isAcceptableOrUnknown(data['day_low']!, _dayLowMeta),
      );
    } else if (isInserting) {
      context.missing(_dayLowMeta);
    }
    if (data.containsKey('volume')) {
      context.handle(
        _volumeMeta,
        volume.isAcceptableOrUnknown(data['volume']!, _volumeMeta),
      );
    } else if (isInserting) {
      context.missing(_volumeMeta);
    }
    if (data.containsKey('market_cap')) {
      context.handle(
        _marketCapMeta,
        marketCap.isAcceptableOrUnknown(data['market_cap']!, _marketCapMeta),
      );
    } else if (isInserting) {
      context.missing(_marketCapMeta);
    }
    if (data.containsKey('sector')) {
      context.handle(
        _sectorMeta,
        sector.isAcceptableOrUnknown(data['sector']!, _sectorMeta),
      );
    } else if (isInserting) {
      context.missing(_sectorMeta);
    }
    if (data.containsKey('industry')) {
      context.handle(
        _industryMeta,
        industry.isAcceptableOrUnknown(data['industry']!, _industryMeta),
      );
    } else if (isInserting) {
      context.missing(_industryMeta);
    }
    if (data.containsKey('pe_ratio')) {
      context.handle(
        _peRatioMeta,
        peRatio.isAcceptableOrUnknown(data['pe_ratio']!, _peRatioMeta),
      );
    } else if (isInserting) {
      context.missing(_peRatioMeta);
    }
    if (data.containsKey('pb_ratio')) {
      context.handle(
        _pbRatioMeta,
        pbRatio.isAcceptableOrUnknown(data['pb_ratio']!, _pbRatioMeta),
      );
    } else if (isInserting) {
      context.missing(_pbRatioMeta);
    }
    if (data.containsKey('dividend_yield')) {
      context.handle(
        _dividendYieldMeta,
        dividendYield.isAcceptableOrUnknown(
          data['dividend_yield']!,
          _dividendYieldMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_dividendYieldMeta);
    }
    if (data.containsKey('beta')) {
      context.handle(
        _betaMeta,
        beta.isAcceptableOrUnknown(data['beta']!, _betaMeta),
      );
    } else if (isInserting) {
      context.missing(_betaMeta);
    }
    if (data.containsKey('fifty_two_week_high')) {
      context.handle(
        _fiftyTwoWeekHighMeta,
        fiftyTwoWeekHigh.isAcceptableOrUnknown(
          data['fifty_two_week_high']!,
          _fiftyTwoWeekHighMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_fiftyTwoWeekHighMeta);
    }
    if (data.containsKey('fifty_two_week_low')) {
      context.handle(
        _fiftyTwoWeekLowMeta,
        fiftyTwoWeekLow.isAcceptableOrUnknown(
          data['fifty_two_week_low']!,
          _fiftyTwoWeekLowMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_fiftyTwoWeekLowMeta);
    }
    if (data.containsKey('last_updated')) {
      context.handle(
        _lastUpdatedMeta,
        lastUpdated.isAcceptableOrUnknown(
          data['last_updated']!,
          _lastUpdatedMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {symbol};
  @override
  Stock map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Stock(
      symbol: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}symbol'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      exchange: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}exchange'],
      )!,
      currentPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}current_price'],
      )!,
      previousClose: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}previous_close'],
      )!,
      dayHigh: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}day_high'],
      )!,
      dayLow: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}day_low'],
      )!,
      volume: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}volume'],
      )!,
      marketCap: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}market_cap'],
      )!,
      sector: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sector'],
      )!,
      industry: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}industry'],
      )!,
      peRatio: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}pe_ratio'],
      )!,
      pbRatio: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}pb_ratio'],
      )!,
      dividendYield: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}dividend_yield'],
      )!,
      beta: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}beta'],
      )!,
      fiftyTwoWeekHigh: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}fifty_two_week_high'],
      )!,
      fiftyTwoWeekLow: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}fifty_two_week_low'],
      )!,
      lastUpdated: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_updated'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
    );
  }

  @override
  $StocksTable createAlias(String alias) {
    return $StocksTable(attachedDatabase, alias);
  }
}

class Stock extends DataClass implements Insertable<Stock> {
  final String symbol;
  final String name;
  final String exchange;
  final double currentPrice;
  final double previousClose;
  final double dayHigh;
  final double dayLow;
  final double volume;
  final double marketCap;
  final String sector;
  final String industry;
  final double peRatio;
  final double pbRatio;
  final double dividendYield;
  final double beta;
  final double fiftyTwoWeekHigh;
  final double fiftyTwoWeekLow;
  final DateTime lastUpdated;
  final bool isActive;
  const Stock({
    required this.symbol,
    required this.name,
    required this.exchange,
    required this.currentPrice,
    required this.previousClose,
    required this.dayHigh,
    required this.dayLow,
    required this.volume,
    required this.marketCap,
    required this.sector,
    required this.industry,
    required this.peRatio,
    required this.pbRatio,
    required this.dividendYield,
    required this.beta,
    required this.fiftyTwoWeekHigh,
    required this.fiftyTwoWeekLow,
    required this.lastUpdated,
    required this.isActive,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['symbol'] = Variable<String>(symbol);
    map['name'] = Variable<String>(name);
    map['exchange'] = Variable<String>(exchange);
    map['current_price'] = Variable<double>(currentPrice);
    map['previous_close'] = Variable<double>(previousClose);
    map['day_high'] = Variable<double>(dayHigh);
    map['day_low'] = Variable<double>(dayLow);
    map['volume'] = Variable<double>(volume);
    map['market_cap'] = Variable<double>(marketCap);
    map['sector'] = Variable<String>(sector);
    map['industry'] = Variable<String>(industry);
    map['pe_ratio'] = Variable<double>(peRatio);
    map['pb_ratio'] = Variable<double>(pbRatio);
    map['dividend_yield'] = Variable<double>(dividendYield);
    map['beta'] = Variable<double>(beta);
    map['fifty_two_week_high'] = Variable<double>(fiftyTwoWeekHigh);
    map['fifty_two_week_low'] = Variable<double>(fiftyTwoWeekLow);
    map['last_updated'] = Variable<DateTime>(lastUpdated);
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  StocksCompanion toCompanion(bool nullToAbsent) {
    return StocksCompanion(
      symbol: Value(symbol),
      name: Value(name),
      exchange: Value(exchange),
      currentPrice: Value(currentPrice),
      previousClose: Value(previousClose),
      dayHigh: Value(dayHigh),
      dayLow: Value(dayLow),
      volume: Value(volume),
      marketCap: Value(marketCap),
      sector: Value(sector),
      industry: Value(industry),
      peRatio: Value(peRatio),
      pbRatio: Value(pbRatio),
      dividendYield: Value(dividendYield),
      beta: Value(beta),
      fiftyTwoWeekHigh: Value(fiftyTwoWeekHigh),
      fiftyTwoWeekLow: Value(fiftyTwoWeekLow),
      lastUpdated: Value(lastUpdated),
      isActive: Value(isActive),
    );
  }

  factory Stock.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Stock(
      symbol: serializer.fromJson<String>(json['symbol']),
      name: serializer.fromJson<String>(json['name']),
      exchange: serializer.fromJson<String>(json['exchange']),
      currentPrice: serializer.fromJson<double>(json['currentPrice']),
      previousClose: serializer.fromJson<double>(json['previousClose']),
      dayHigh: serializer.fromJson<double>(json['dayHigh']),
      dayLow: serializer.fromJson<double>(json['dayLow']),
      volume: serializer.fromJson<double>(json['volume']),
      marketCap: serializer.fromJson<double>(json['marketCap']),
      sector: serializer.fromJson<String>(json['sector']),
      industry: serializer.fromJson<String>(json['industry']),
      peRatio: serializer.fromJson<double>(json['peRatio']),
      pbRatio: serializer.fromJson<double>(json['pbRatio']),
      dividendYield: serializer.fromJson<double>(json['dividendYield']),
      beta: serializer.fromJson<double>(json['beta']),
      fiftyTwoWeekHigh: serializer.fromJson<double>(json['fiftyTwoWeekHigh']),
      fiftyTwoWeekLow: serializer.fromJson<double>(json['fiftyTwoWeekLow']),
      lastUpdated: serializer.fromJson<DateTime>(json['lastUpdated']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'symbol': serializer.toJson<String>(symbol),
      'name': serializer.toJson<String>(name),
      'exchange': serializer.toJson<String>(exchange),
      'currentPrice': serializer.toJson<double>(currentPrice),
      'previousClose': serializer.toJson<double>(previousClose),
      'dayHigh': serializer.toJson<double>(dayHigh),
      'dayLow': serializer.toJson<double>(dayLow),
      'volume': serializer.toJson<double>(volume),
      'marketCap': serializer.toJson<double>(marketCap),
      'sector': serializer.toJson<String>(sector),
      'industry': serializer.toJson<String>(industry),
      'peRatio': serializer.toJson<double>(peRatio),
      'pbRatio': serializer.toJson<double>(pbRatio),
      'dividendYield': serializer.toJson<double>(dividendYield),
      'beta': serializer.toJson<double>(beta),
      'fiftyTwoWeekHigh': serializer.toJson<double>(fiftyTwoWeekHigh),
      'fiftyTwoWeekLow': serializer.toJson<double>(fiftyTwoWeekLow),
      'lastUpdated': serializer.toJson<DateTime>(lastUpdated),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  Stock copyWith({
    String? symbol,
    String? name,
    String? exchange,
    double? currentPrice,
    double? previousClose,
    double? dayHigh,
    double? dayLow,
    double? volume,
    double? marketCap,
    String? sector,
    String? industry,
    double? peRatio,
    double? pbRatio,
    double? dividendYield,
    double? beta,
    double? fiftyTwoWeekHigh,
    double? fiftyTwoWeekLow,
    DateTime? lastUpdated,
    bool? isActive,
  }) => Stock(
    symbol: symbol ?? this.symbol,
    name: name ?? this.name,
    exchange: exchange ?? this.exchange,
    currentPrice: currentPrice ?? this.currentPrice,
    previousClose: previousClose ?? this.previousClose,
    dayHigh: dayHigh ?? this.dayHigh,
    dayLow: dayLow ?? this.dayLow,
    volume: volume ?? this.volume,
    marketCap: marketCap ?? this.marketCap,
    sector: sector ?? this.sector,
    industry: industry ?? this.industry,
    peRatio: peRatio ?? this.peRatio,
    pbRatio: pbRatio ?? this.pbRatio,
    dividendYield: dividendYield ?? this.dividendYield,
    beta: beta ?? this.beta,
    fiftyTwoWeekHigh: fiftyTwoWeekHigh ?? this.fiftyTwoWeekHigh,
    fiftyTwoWeekLow: fiftyTwoWeekLow ?? this.fiftyTwoWeekLow,
    lastUpdated: lastUpdated ?? this.lastUpdated,
    isActive: isActive ?? this.isActive,
  );
  Stock copyWithCompanion(StocksCompanion data) {
    return Stock(
      symbol: data.symbol.present ? data.symbol.value : this.symbol,
      name: data.name.present ? data.name.value : this.name,
      exchange: data.exchange.present ? data.exchange.value : this.exchange,
      currentPrice: data.currentPrice.present
          ? data.currentPrice.value
          : this.currentPrice,
      previousClose: data.previousClose.present
          ? data.previousClose.value
          : this.previousClose,
      dayHigh: data.dayHigh.present ? data.dayHigh.value : this.dayHigh,
      dayLow: data.dayLow.present ? data.dayLow.value : this.dayLow,
      volume: data.volume.present ? data.volume.value : this.volume,
      marketCap: data.marketCap.present ? data.marketCap.value : this.marketCap,
      sector: data.sector.present ? data.sector.value : this.sector,
      industry: data.industry.present ? data.industry.value : this.industry,
      peRatio: data.peRatio.present ? data.peRatio.value : this.peRatio,
      pbRatio: data.pbRatio.present ? data.pbRatio.value : this.pbRatio,
      dividendYield: data.dividendYield.present
          ? data.dividendYield.value
          : this.dividendYield,
      beta: data.beta.present ? data.beta.value : this.beta,
      fiftyTwoWeekHigh: data.fiftyTwoWeekHigh.present
          ? data.fiftyTwoWeekHigh.value
          : this.fiftyTwoWeekHigh,
      fiftyTwoWeekLow: data.fiftyTwoWeekLow.present
          ? data.fiftyTwoWeekLow.value
          : this.fiftyTwoWeekLow,
      lastUpdated: data.lastUpdated.present
          ? data.lastUpdated.value
          : this.lastUpdated,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Stock(')
          ..write('symbol: $symbol, ')
          ..write('name: $name, ')
          ..write('exchange: $exchange, ')
          ..write('currentPrice: $currentPrice, ')
          ..write('previousClose: $previousClose, ')
          ..write('dayHigh: $dayHigh, ')
          ..write('dayLow: $dayLow, ')
          ..write('volume: $volume, ')
          ..write('marketCap: $marketCap, ')
          ..write('sector: $sector, ')
          ..write('industry: $industry, ')
          ..write('peRatio: $peRatio, ')
          ..write('pbRatio: $pbRatio, ')
          ..write('dividendYield: $dividendYield, ')
          ..write('beta: $beta, ')
          ..write('fiftyTwoWeekHigh: $fiftyTwoWeekHigh, ')
          ..write('fiftyTwoWeekLow: $fiftyTwoWeekLow, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    symbol,
    name,
    exchange,
    currentPrice,
    previousClose,
    dayHigh,
    dayLow,
    volume,
    marketCap,
    sector,
    industry,
    peRatio,
    pbRatio,
    dividendYield,
    beta,
    fiftyTwoWeekHigh,
    fiftyTwoWeekLow,
    lastUpdated,
    isActive,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Stock &&
          other.symbol == this.symbol &&
          other.name == this.name &&
          other.exchange == this.exchange &&
          other.currentPrice == this.currentPrice &&
          other.previousClose == this.previousClose &&
          other.dayHigh == this.dayHigh &&
          other.dayLow == this.dayLow &&
          other.volume == this.volume &&
          other.marketCap == this.marketCap &&
          other.sector == this.sector &&
          other.industry == this.industry &&
          other.peRatio == this.peRatio &&
          other.pbRatio == this.pbRatio &&
          other.dividendYield == this.dividendYield &&
          other.beta == this.beta &&
          other.fiftyTwoWeekHigh == this.fiftyTwoWeekHigh &&
          other.fiftyTwoWeekLow == this.fiftyTwoWeekLow &&
          other.lastUpdated == this.lastUpdated &&
          other.isActive == this.isActive);
}

class StocksCompanion extends UpdateCompanion<Stock> {
  final Value<String> symbol;
  final Value<String> name;
  final Value<String> exchange;
  final Value<double> currentPrice;
  final Value<double> previousClose;
  final Value<double> dayHigh;
  final Value<double> dayLow;
  final Value<double> volume;
  final Value<double> marketCap;
  final Value<String> sector;
  final Value<String> industry;
  final Value<double> peRatio;
  final Value<double> pbRatio;
  final Value<double> dividendYield;
  final Value<double> beta;
  final Value<double> fiftyTwoWeekHigh;
  final Value<double> fiftyTwoWeekLow;
  final Value<DateTime> lastUpdated;
  final Value<bool> isActive;
  final Value<int> rowid;
  const StocksCompanion({
    this.symbol = const Value.absent(),
    this.name = const Value.absent(),
    this.exchange = const Value.absent(),
    this.currentPrice = const Value.absent(),
    this.previousClose = const Value.absent(),
    this.dayHigh = const Value.absent(),
    this.dayLow = const Value.absent(),
    this.volume = const Value.absent(),
    this.marketCap = const Value.absent(),
    this.sector = const Value.absent(),
    this.industry = const Value.absent(),
    this.peRatio = const Value.absent(),
    this.pbRatio = const Value.absent(),
    this.dividendYield = const Value.absent(),
    this.beta = const Value.absent(),
    this.fiftyTwoWeekHigh = const Value.absent(),
    this.fiftyTwoWeekLow = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  StocksCompanion.insert({
    required String symbol,
    required String name,
    required String exchange,
    required double currentPrice,
    required double previousClose,
    required double dayHigh,
    required double dayLow,
    required double volume,
    required double marketCap,
    required String sector,
    required String industry,
    required double peRatio,
    required double pbRatio,
    required double dividendYield,
    required double beta,
    required double fiftyTwoWeekHigh,
    required double fiftyTwoWeekLow,
    required DateTime lastUpdated,
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : symbol = Value(symbol),
       name = Value(name),
       exchange = Value(exchange),
       currentPrice = Value(currentPrice),
       previousClose = Value(previousClose),
       dayHigh = Value(dayHigh),
       dayLow = Value(dayLow),
       volume = Value(volume),
       marketCap = Value(marketCap),
       sector = Value(sector),
       industry = Value(industry),
       peRatio = Value(peRatio),
       pbRatio = Value(pbRatio),
       dividendYield = Value(dividendYield),
       beta = Value(beta),
       fiftyTwoWeekHigh = Value(fiftyTwoWeekHigh),
       fiftyTwoWeekLow = Value(fiftyTwoWeekLow),
       lastUpdated = Value(lastUpdated);
  static Insertable<Stock> custom({
    Expression<String>? symbol,
    Expression<String>? name,
    Expression<String>? exchange,
    Expression<double>? currentPrice,
    Expression<double>? previousClose,
    Expression<double>? dayHigh,
    Expression<double>? dayLow,
    Expression<double>? volume,
    Expression<double>? marketCap,
    Expression<String>? sector,
    Expression<String>? industry,
    Expression<double>? peRatio,
    Expression<double>? pbRatio,
    Expression<double>? dividendYield,
    Expression<double>? beta,
    Expression<double>? fiftyTwoWeekHigh,
    Expression<double>? fiftyTwoWeekLow,
    Expression<DateTime>? lastUpdated,
    Expression<bool>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (symbol != null) 'symbol': symbol,
      if (name != null) 'name': name,
      if (exchange != null) 'exchange': exchange,
      if (currentPrice != null) 'current_price': currentPrice,
      if (previousClose != null) 'previous_close': previousClose,
      if (dayHigh != null) 'day_high': dayHigh,
      if (dayLow != null) 'day_low': dayLow,
      if (volume != null) 'volume': volume,
      if (marketCap != null) 'market_cap': marketCap,
      if (sector != null) 'sector': sector,
      if (industry != null) 'industry': industry,
      if (peRatio != null) 'pe_ratio': peRatio,
      if (pbRatio != null) 'pb_ratio': pbRatio,
      if (dividendYield != null) 'dividend_yield': dividendYield,
      if (beta != null) 'beta': beta,
      if (fiftyTwoWeekHigh != null) 'fifty_two_week_high': fiftyTwoWeekHigh,
      if (fiftyTwoWeekLow != null) 'fifty_two_week_low': fiftyTwoWeekLow,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  StocksCompanion copyWith({
    Value<String>? symbol,
    Value<String>? name,
    Value<String>? exchange,
    Value<double>? currentPrice,
    Value<double>? previousClose,
    Value<double>? dayHigh,
    Value<double>? dayLow,
    Value<double>? volume,
    Value<double>? marketCap,
    Value<String>? sector,
    Value<String>? industry,
    Value<double>? peRatio,
    Value<double>? pbRatio,
    Value<double>? dividendYield,
    Value<double>? beta,
    Value<double>? fiftyTwoWeekHigh,
    Value<double>? fiftyTwoWeekLow,
    Value<DateTime>? lastUpdated,
    Value<bool>? isActive,
    Value<int>? rowid,
  }) {
    return StocksCompanion(
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      exchange: exchange ?? this.exchange,
      currentPrice: currentPrice ?? this.currentPrice,
      previousClose: previousClose ?? this.previousClose,
      dayHigh: dayHigh ?? this.dayHigh,
      dayLow: dayLow ?? this.dayLow,
      volume: volume ?? this.volume,
      marketCap: marketCap ?? this.marketCap,
      sector: sector ?? this.sector,
      industry: industry ?? this.industry,
      peRatio: peRatio ?? this.peRatio,
      pbRatio: pbRatio ?? this.pbRatio,
      dividendYield: dividendYield ?? this.dividendYield,
      beta: beta ?? this.beta,
      fiftyTwoWeekHigh: fiftyTwoWeekHigh ?? this.fiftyTwoWeekHigh,
      fiftyTwoWeekLow: fiftyTwoWeekLow ?? this.fiftyTwoWeekLow,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (exchange.present) {
      map['exchange'] = Variable<String>(exchange.value);
    }
    if (currentPrice.present) {
      map['current_price'] = Variable<double>(currentPrice.value);
    }
    if (previousClose.present) {
      map['previous_close'] = Variable<double>(previousClose.value);
    }
    if (dayHigh.present) {
      map['day_high'] = Variable<double>(dayHigh.value);
    }
    if (dayLow.present) {
      map['day_low'] = Variable<double>(dayLow.value);
    }
    if (volume.present) {
      map['volume'] = Variable<double>(volume.value);
    }
    if (marketCap.present) {
      map['market_cap'] = Variable<double>(marketCap.value);
    }
    if (sector.present) {
      map['sector'] = Variable<String>(sector.value);
    }
    if (industry.present) {
      map['industry'] = Variable<String>(industry.value);
    }
    if (peRatio.present) {
      map['pe_ratio'] = Variable<double>(peRatio.value);
    }
    if (pbRatio.present) {
      map['pb_ratio'] = Variable<double>(pbRatio.value);
    }
    if (dividendYield.present) {
      map['dividend_yield'] = Variable<double>(dividendYield.value);
    }
    if (beta.present) {
      map['beta'] = Variable<double>(beta.value);
    }
    if (fiftyTwoWeekHigh.present) {
      map['fifty_two_week_high'] = Variable<double>(fiftyTwoWeekHigh.value);
    }
    if (fiftyTwoWeekLow.present) {
      map['fifty_two_week_low'] = Variable<double>(fiftyTwoWeekLow.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<DateTime>(lastUpdated.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StocksCompanion(')
          ..write('symbol: $symbol, ')
          ..write('name: $name, ')
          ..write('exchange: $exchange, ')
          ..write('currentPrice: $currentPrice, ')
          ..write('previousClose: $previousClose, ')
          ..write('dayHigh: $dayHigh, ')
          ..write('dayLow: $dayLow, ')
          ..write('volume: $volume, ')
          ..write('marketCap: $marketCap, ')
          ..write('sector: $sector, ')
          ..write('industry: $industry, ')
          ..write('peRatio: $peRatio, ')
          ..write('pbRatio: $pbRatio, ')
          ..write('dividendYield: $dividendYield, ')
          ..write('beta: $beta, ')
          ..write('fiftyTwoWeekHigh: $fiftyTwoWeekHigh, ')
          ..write('fiftyTwoWeekLow: $fiftyTwoWeekLow, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OptionTableTable extends OptionTable
    with TableInfo<$OptionTableTable, OptionTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OptionTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
    'symbol',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _underlyingSymbolMeta = const VerificationMeta(
    'underlyingSymbol',
  );
  @override
  late final GeneratedColumn<String> underlyingSymbol = GeneratedColumn<String>(
    'underlying_symbol',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _strikePriceMeta = const VerificationMeta(
    'strikePrice',
  );
  @override
  late final GeneratedColumn<double> strikePrice = GeneratedColumn<double>(
    'strike_price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _expiryDateMeta = const VerificationMeta(
    'expiryDate',
  );
  @override
  late final GeneratedColumn<DateTime> expiryDate = GeneratedColumn<DateTime>(
    'expiry_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currentPriceMeta = const VerificationMeta(
    'currentPrice',
  );
  @override
  late final GeneratedColumn<double> currentPrice = GeneratedColumn<double>(
    'current_price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _previousCloseMeta = const VerificationMeta(
    'previousClose',
  );
  @override
  late final GeneratedColumn<double> previousClose = GeneratedColumn<double>(
    'previous_close',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bidPriceMeta = const VerificationMeta(
    'bidPrice',
  );
  @override
  late final GeneratedColumn<double> bidPrice = GeneratedColumn<double>(
    'bid_price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _askPriceMeta = const VerificationMeta(
    'askPrice',
  );
  @override
  late final GeneratedColumn<double> askPrice = GeneratedColumn<double>(
    'ask_price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bidQuantityMeta = const VerificationMeta(
    'bidQuantity',
  );
  @override
  late final GeneratedColumn<int> bidQuantity = GeneratedColumn<int>(
    'bid_quantity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _askQuantityMeta = const VerificationMeta(
    'askQuantity',
  );
  @override
  late final GeneratedColumn<int> askQuantity = GeneratedColumn<int>(
    'ask_quantity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _openInterestMeta = const VerificationMeta(
    'openInterest',
  );
  @override
  late final GeneratedColumn<double> openInterest = GeneratedColumn<double>(
    'open_interest',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _volumeMeta = const VerificationMeta('volume');
  @override
  late final GeneratedColumn<double> volume = GeneratedColumn<double>(
    'volume',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _impliedVolatilityMeta = const VerificationMeta(
    'impliedVolatility',
  );
  @override
  late final GeneratedColumn<double> impliedVolatility =
      GeneratedColumn<double>(
        'implied_volatility',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _deltaMeta = const VerificationMeta('delta');
  @override
  late final GeneratedColumn<double> delta = GeneratedColumn<double>(
    'delta',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _gammaMeta = const VerificationMeta('gamma');
  @override
  late final GeneratedColumn<double> gamma = GeneratedColumn<double>(
    'gamma',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _thetaMeta = const VerificationMeta('theta');
  @override
  late final GeneratedColumn<double> theta = GeneratedColumn<double>(
    'theta',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _vegaMeta = const VerificationMeta('vega');
  @override
  late final GeneratedColumn<double> vega = GeneratedColumn<double>(
    'vega',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _rhoMeta = const VerificationMeta('rho');
  @override
  late final GeneratedColumn<double> rho = GeneratedColumn<double>(
    'rho',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastUpdatedMeta = const VerificationMeta(
    'lastUpdated',
  );
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
    'last_updated',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: Constant(true),
  );
  @override
  List<GeneratedColumn> get $columns => [
    symbol,
    underlyingSymbol,
    strikePrice,
    type,
    expiryDate,
    currentPrice,
    previousClose,
    bidPrice,
    askPrice,
    bidQuantity,
    askQuantity,
    openInterest,
    volume,
    impliedVolatility,
    delta,
    gamma,
    theta,
    vega,
    rho,
    lastUpdated,
    isActive,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'option_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<OptionTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('symbol')) {
      context.handle(
        _symbolMeta,
        symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta),
      );
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('underlying_symbol')) {
      context.handle(
        _underlyingSymbolMeta,
        underlyingSymbol.isAcceptableOrUnknown(
          data['underlying_symbol']!,
          _underlyingSymbolMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_underlyingSymbolMeta);
    }
    if (data.containsKey('strike_price')) {
      context.handle(
        _strikePriceMeta,
        strikePrice.isAcceptableOrUnknown(
          data['strike_price']!,
          _strikePriceMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_strikePriceMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('expiry_date')) {
      context.handle(
        _expiryDateMeta,
        expiryDate.isAcceptableOrUnknown(data['expiry_date']!, _expiryDateMeta),
      );
    } else if (isInserting) {
      context.missing(_expiryDateMeta);
    }
    if (data.containsKey('current_price')) {
      context.handle(
        _currentPriceMeta,
        currentPrice.isAcceptableOrUnknown(
          data['current_price']!,
          _currentPriceMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_currentPriceMeta);
    }
    if (data.containsKey('previous_close')) {
      context.handle(
        _previousCloseMeta,
        previousClose.isAcceptableOrUnknown(
          data['previous_close']!,
          _previousCloseMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_previousCloseMeta);
    }
    if (data.containsKey('bid_price')) {
      context.handle(
        _bidPriceMeta,
        bidPrice.isAcceptableOrUnknown(data['bid_price']!, _bidPriceMeta),
      );
    } else if (isInserting) {
      context.missing(_bidPriceMeta);
    }
    if (data.containsKey('ask_price')) {
      context.handle(
        _askPriceMeta,
        askPrice.isAcceptableOrUnknown(data['ask_price']!, _askPriceMeta),
      );
    } else if (isInserting) {
      context.missing(_askPriceMeta);
    }
    if (data.containsKey('bid_quantity')) {
      context.handle(
        _bidQuantityMeta,
        bidQuantity.isAcceptableOrUnknown(
          data['bid_quantity']!,
          _bidQuantityMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_bidQuantityMeta);
    }
    if (data.containsKey('ask_quantity')) {
      context.handle(
        _askQuantityMeta,
        askQuantity.isAcceptableOrUnknown(
          data['ask_quantity']!,
          _askQuantityMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_askQuantityMeta);
    }
    if (data.containsKey('open_interest')) {
      context.handle(
        _openInterestMeta,
        openInterest.isAcceptableOrUnknown(
          data['open_interest']!,
          _openInterestMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_openInterestMeta);
    }
    if (data.containsKey('volume')) {
      context.handle(
        _volumeMeta,
        volume.isAcceptableOrUnknown(data['volume']!, _volumeMeta),
      );
    } else if (isInserting) {
      context.missing(_volumeMeta);
    }
    if (data.containsKey('implied_volatility')) {
      context.handle(
        _impliedVolatilityMeta,
        impliedVolatility.isAcceptableOrUnknown(
          data['implied_volatility']!,
          _impliedVolatilityMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_impliedVolatilityMeta);
    }
    if (data.containsKey('delta')) {
      context.handle(
        _deltaMeta,
        delta.isAcceptableOrUnknown(data['delta']!, _deltaMeta),
      );
    } else if (isInserting) {
      context.missing(_deltaMeta);
    }
    if (data.containsKey('gamma')) {
      context.handle(
        _gammaMeta,
        gamma.isAcceptableOrUnknown(data['gamma']!, _gammaMeta),
      );
    } else if (isInserting) {
      context.missing(_gammaMeta);
    }
    if (data.containsKey('theta')) {
      context.handle(
        _thetaMeta,
        theta.isAcceptableOrUnknown(data['theta']!, _thetaMeta),
      );
    } else if (isInserting) {
      context.missing(_thetaMeta);
    }
    if (data.containsKey('vega')) {
      context.handle(
        _vegaMeta,
        vega.isAcceptableOrUnknown(data['vega']!, _vegaMeta),
      );
    } else if (isInserting) {
      context.missing(_vegaMeta);
    }
    if (data.containsKey('rho')) {
      context.handle(
        _rhoMeta,
        rho.isAcceptableOrUnknown(data['rho']!, _rhoMeta),
      );
    } else if (isInserting) {
      context.missing(_rhoMeta);
    }
    if (data.containsKey('last_updated')) {
      context.handle(
        _lastUpdatedMeta,
        lastUpdated.isAcceptableOrUnknown(
          data['last_updated']!,
          _lastUpdatedMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {symbol, expiryDate};
  @override
  OptionTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OptionTableData(
      symbol: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}symbol'],
      )!,
      underlyingSymbol: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}underlying_symbol'],
      )!,
      strikePrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}strike_price'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      expiryDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}expiry_date'],
      )!,
      currentPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}current_price'],
      )!,
      previousClose: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}previous_close'],
      )!,
      bidPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}bid_price'],
      )!,
      askPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}ask_price'],
      )!,
      bidQuantity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}bid_quantity'],
      )!,
      askQuantity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ask_quantity'],
      )!,
      openInterest: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}open_interest'],
      )!,
      volume: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}volume'],
      )!,
      impliedVolatility: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}implied_volatility'],
      )!,
      delta: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}delta'],
      )!,
      gamma: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}gamma'],
      )!,
      theta: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}theta'],
      )!,
      vega: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}vega'],
      )!,
      rho: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}rho'],
      )!,
      lastUpdated: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_updated'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
    );
  }

  @override
  $OptionTableTable createAlias(String alias) {
    return $OptionTableTable(attachedDatabase, alias);
  }
}

class OptionTableData extends DataClass implements Insertable<OptionTableData> {
  final String symbol;
  final String underlyingSymbol;
  final double strikePrice;
  final String type;
  final DateTime expiryDate;
  final double currentPrice;
  final double previousClose;
  final double bidPrice;
  final double askPrice;
  final int bidQuantity;
  final int askQuantity;
  final double openInterest;
  final double volume;
  final double impliedVolatility;
  final double delta;
  final double gamma;
  final double theta;
  final double vega;
  final double rho;
  final DateTime lastUpdated;
  final bool isActive;
  const OptionTableData({
    required this.symbol,
    required this.underlyingSymbol,
    required this.strikePrice,
    required this.type,
    required this.expiryDate,
    required this.currentPrice,
    required this.previousClose,
    required this.bidPrice,
    required this.askPrice,
    required this.bidQuantity,
    required this.askQuantity,
    required this.openInterest,
    required this.volume,
    required this.impliedVolatility,
    required this.delta,
    required this.gamma,
    required this.theta,
    required this.vega,
    required this.rho,
    required this.lastUpdated,
    required this.isActive,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['symbol'] = Variable<String>(symbol);
    map['underlying_symbol'] = Variable<String>(underlyingSymbol);
    map['strike_price'] = Variable<double>(strikePrice);
    map['type'] = Variable<String>(type);
    map['expiry_date'] = Variable<DateTime>(expiryDate);
    map['current_price'] = Variable<double>(currentPrice);
    map['previous_close'] = Variable<double>(previousClose);
    map['bid_price'] = Variable<double>(bidPrice);
    map['ask_price'] = Variable<double>(askPrice);
    map['bid_quantity'] = Variable<int>(bidQuantity);
    map['ask_quantity'] = Variable<int>(askQuantity);
    map['open_interest'] = Variable<double>(openInterest);
    map['volume'] = Variable<double>(volume);
    map['implied_volatility'] = Variable<double>(impliedVolatility);
    map['delta'] = Variable<double>(delta);
    map['gamma'] = Variable<double>(gamma);
    map['theta'] = Variable<double>(theta);
    map['vega'] = Variable<double>(vega);
    map['rho'] = Variable<double>(rho);
    map['last_updated'] = Variable<DateTime>(lastUpdated);
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  OptionTableCompanion toCompanion(bool nullToAbsent) {
    return OptionTableCompanion(
      symbol: Value(symbol),
      underlyingSymbol: Value(underlyingSymbol),
      strikePrice: Value(strikePrice),
      type: Value(type),
      expiryDate: Value(expiryDate),
      currentPrice: Value(currentPrice),
      previousClose: Value(previousClose),
      bidPrice: Value(bidPrice),
      askPrice: Value(askPrice),
      bidQuantity: Value(bidQuantity),
      askQuantity: Value(askQuantity),
      openInterest: Value(openInterest),
      volume: Value(volume),
      impliedVolatility: Value(impliedVolatility),
      delta: Value(delta),
      gamma: Value(gamma),
      theta: Value(theta),
      vega: Value(vega),
      rho: Value(rho),
      lastUpdated: Value(lastUpdated),
      isActive: Value(isActive),
    );
  }

  factory OptionTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OptionTableData(
      symbol: serializer.fromJson<String>(json['symbol']),
      underlyingSymbol: serializer.fromJson<String>(json['underlyingSymbol']),
      strikePrice: serializer.fromJson<double>(json['strikePrice']),
      type: serializer.fromJson<String>(json['type']),
      expiryDate: serializer.fromJson<DateTime>(json['expiryDate']),
      currentPrice: serializer.fromJson<double>(json['currentPrice']),
      previousClose: serializer.fromJson<double>(json['previousClose']),
      bidPrice: serializer.fromJson<double>(json['bidPrice']),
      askPrice: serializer.fromJson<double>(json['askPrice']),
      bidQuantity: serializer.fromJson<int>(json['bidQuantity']),
      askQuantity: serializer.fromJson<int>(json['askQuantity']),
      openInterest: serializer.fromJson<double>(json['openInterest']),
      volume: serializer.fromJson<double>(json['volume']),
      impliedVolatility: serializer.fromJson<double>(json['impliedVolatility']),
      delta: serializer.fromJson<double>(json['delta']),
      gamma: serializer.fromJson<double>(json['gamma']),
      theta: serializer.fromJson<double>(json['theta']),
      vega: serializer.fromJson<double>(json['vega']),
      rho: serializer.fromJson<double>(json['rho']),
      lastUpdated: serializer.fromJson<DateTime>(json['lastUpdated']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'symbol': serializer.toJson<String>(symbol),
      'underlyingSymbol': serializer.toJson<String>(underlyingSymbol),
      'strikePrice': serializer.toJson<double>(strikePrice),
      'type': serializer.toJson<String>(type),
      'expiryDate': serializer.toJson<DateTime>(expiryDate),
      'currentPrice': serializer.toJson<double>(currentPrice),
      'previousClose': serializer.toJson<double>(previousClose),
      'bidPrice': serializer.toJson<double>(bidPrice),
      'askPrice': serializer.toJson<double>(askPrice),
      'bidQuantity': serializer.toJson<int>(bidQuantity),
      'askQuantity': serializer.toJson<int>(askQuantity),
      'openInterest': serializer.toJson<double>(openInterest),
      'volume': serializer.toJson<double>(volume),
      'impliedVolatility': serializer.toJson<double>(impliedVolatility),
      'delta': serializer.toJson<double>(delta),
      'gamma': serializer.toJson<double>(gamma),
      'theta': serializer.toJson<double>(theta),
      'vega': serializer.toJson<double>(vega),
      'rho': serializer.toJson<double>(rho),
      'lastUpdated': serializer.toJson<DateTime>(lastUpdated),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  OptionTableData copyWith({
    String? symbol,
    String? underlyingSymbol,
    double? strikePrice,
    String? type,
    DateTime? expiryDate,
    double? currentPrice,
    double? previousClose,
    double? bidPrice,
    double? askPrice,
    int? bidQuantity,
    int? askQuantity,
    double? openInterest,
    double? volume,
    double? impliedVolatility,
    double? delta,
    double? gamma,
    double? theta,
    double? vega,
    double? rho,
    DateTime? lastUpdated,
    bool? isActive,
  }) => OptionTableData(
    symbol: symbol ?? this.symbol,
    underlyingSymbol: underlyingSymbol ?? this.underlyingSymbol,
    strikePrice: strikePrice ?? this.strikePrice,
    type: type ?? this.type,
    expiryDate: expiryDate ?? this.expiryDate,
    currentPrice: currentPrice ?? this.currentPrice,
    previousClose: previousClose ?? this.previousClose,
    bidPrice: bidPrice ?? this.bidPrice,
    askPrice: askPrice ?? this.askPrice,
    bidQuantity: bidQuantity ?? this.bidQuantity,
    askQuantity: askQuantity ?? this.askQuantity,
    openInterest: openInterest ?? this.openInterest,
    volume: volume ?? this.volume,
    impliedVolatility: impliedVolatility ?? this.impliedVolatility,
    delta: delta ?? this.delta,
    gamma: gamma ?? this.gamma,
    theta: theta ?? this.theta,
    vega: vega ?? this.vega,
    rho: rho ?? this.rho,
    lastUpdated: lastUpdated ?? this.lastUpdated,
    isActive: isActive ?? this.isActive,
  );
  OptionTableData copyWithCompanion(OptionTableCompanion data) {
    return OptionTableData(
      symbol: data.symbol.present ? data.symbol.value : this.symbol,
      underlyingSymbol: data.underlyingSymbol.present
          ? data.underlyingSymbol.value
          : this.underlyingSymbol,
      strikePrice: data.strikePrice.present
          ? data.strikePrice.value
          : this.strikePrice,
      type: data.type.present ? data.type.value : this.type,
      expiryDate: data.expiryDate.present
          ? data.expiryDate.value
          : this.expiryDate,
      currentPrice: data.currentPrice.present
          ? data.currentPrice.value
          : this.currentPrice,
      previousClose: data.previousClose.present
          ? data.previousClose.value
          : this.previousClose,
      bidPrice: data.bidPrice.present ? data.bidPrice.value : this.bidPrice,
      askPrice: data.askPrice.present ? data.askPrice.value : this.askPrice,
      bidQuantity: data.bidQuantity.present
          ? data.bidQuantity.value
          : this.bidQuantity,
      askQuantity: data.askQuantity.present
          ? data.askQuantity.value
          : this.askQuantity,
      openInterest: data.openInterest.present
          ? data.openInterest.value
          : this.openInterest,
      volume: data.volume.present ? data.volume.value : this.volume,
      impliedVolatility: data.impliedVolatility.present
          ? data.impliedVolatility.value
          : this.impliedVolatility,
      delta: data.delta.present ? data.delta.value : this.delta,
      gamma: data.gamma.present ? data.gamma.value : this.gamma,
      theta: data.theta.present ? data.theta.value : this.theta,
      vega: data.vega.present ? data.vega.value : this.vega,
      rho: data.rho.present ? data.rho.value : this.rho,
      lastUpdated: data.lastUpdated.present
          ? data.lastUpdated.value
          : this.lastUpdated,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OptionTableData(')
          ..write('symbol: $symbol, ')
          ..write('underlyingSymbol: $underlyingSymbol, ')
          ..write('strikePrice: $strikePrice, ')
          ..write('type: $type, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('currentPrice: $currentPrice, ')
          ..write('previousClose: $previousClose, ')
          ..write('bidPrice: $bidPrice, ')
          ..write('askPrice: $askPrice, ')
          ..write('bidQuantity: $bidQuantity, ')
          ..write('askQuantity: $askQuantity, ')
          ..write('openInterest: $openInterest, ')
          ..write('volume: $volume, ')
          ..write('impliedVolatility: $impliedVolatility, ')
          ..write('delta: $delta, ')
          ..write('gamma: $gamma, ')
          ..write('theta: $theta, ')
          ..write('vega: $vega, ')
          ..write('rho: $rho, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    symbol,
    underlyingSymbol,
    strikePrice,
    type,
    expiryDate,
    currentPrice,
    previousClose,
    bidPrice,
    askPrice,
    bidQuantity,
    askQuantity,
    openInterest,
    volume,
    impliedVolatility,
    delta,
    gamma,
    theta,
    vega,
    rho,
    lastUpdated,
    isActive,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OptionTableData &&
          other.symbol == this.symbol &&
          other.underlyingSymbol == this.underlyingSymbol &&
          other.strikePrice == this.strikePrice &&
          other.type == this.type &&
          other.expiryDate == this.expiryDate &&
          other.currentPrice == this.currentPrice &&
          other.previousClose == this.previousClose &&
          other.bidPrice == this.bidPrice &&
          other.askPrice == this.askPrice &&
          other.bidQuantity == this.bidQuantity &&
          other.askQuantity == this.askQuantity &&
          other.openInterest == this.openInterest &&
          other.volume == this.volume &&
          other.impliedVolatility == this.impliedVolatility &&
          other.delta == this.delta &&
          other.gamma == this.gamma &&
          other.theta == this.theta &&
          other.vega == this.vega &&
          other.rho == this.rho &&
          other.lastUpdated == this.lastUpdated &&
          other.isActive == this.isActive);
}

class OptionTableCompanion extends UpdateCompanion<OptionTableData> {
  final Value<String> symbol;
  final Value<String> underlyingSymbol;
  final Value<double> strikePrice;
  final Value<String> type;
  final Value<DateTime> expiryDate;
  final Value<double> currentPrice;
  final Value<double> previousClose;
  final Value<double> bidPrice;
  final Value<double> askPrice;
  final Value<int> bidQuantity;
  final Value<int> askQuantity;
  final Value<double> openInterest;
  final Value<double> volume;
  final Value<double> impliedVolatility;
  final Value<double> delta;
  final Value<double> gamma;
  final Value<double> theta;
  final Value<double> vega;
  final Value<double> rho;
  final Value<DateTime> lastUpdated;
  final Value<bool> isActive;
  final Value<int> rowid;
  const OptionTableCompanion({
    this.symbol = const Value.absent(),
    this.underlyingSymbol = const Value.absent(),
    this.strikePrice = const Value.absent(),
    this.type = const Value.absent(),
    this.expiryDate = const Value.absent(),
    this.currentPrice = const Value.absent(),
    this.previousClose = const Value.absent(),
    this.bidPrice = const Value.absent(),
    this.askPrice = const Value.absent(),
    this.bidQuantity = const Value.absent(),
    this.askQuantity = const Value.absent(),
    this.openInterest = const Value.absent(),
    this.volume = const Value.absent(),
    this.impliedVolatility = const Value.absent(),
    this.delta = const Value.absent(),
    this.gamma = const Value.absent(),
    this.theta = const Value.absent(),
    this.vega = const Value.absent(),
    this.rho = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OptionTableCompanion.insert({
    required String symbol,
    required String underlyingSymbol,
    required double strikePrice,
    required String type,
    required DateTime expiryDate,
    required double currentPrice,
    required double previousClose,
    required double bidPrice,
    required double askPrice,
    required int bidQuantity,
    required int askQuantity,
    required double openInterest,
    required double volume,
    required double impliedVolatility,
    required double delta,
    required double gamma,
    required double theta,
    required double vega,
    required double rho,
    required DateTime lastUpdated,
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : symbol = Value(symbol),
       underlyingSymbol = Value(underlyingSymbol),
       strikePrice = Value(strikePrice),
       type = Value(type),
       expiryDate = Value(expiryDate),
       currentPrice = Value(currentPrice),
       previousClose = Value(previousClose),
       bidPrice = Value(bidPrice),
       askPrice = Value(askPrice),
       bidQuantity = Value(bidQuantity),
       askQuantity = Value(askQuantity),
       openInterest = Value(openInterest),
       volume = Value(volume),
       impliedVolatility = Value(impliedVolatility),
       delta = Value(delta),
       gamma = Value(gamma),
       theta = Value(theta),
       vega = Value(vega),
       rho = Value(rho),
       lastUpdated = Value(lastUpdated);
  static Insertable<OptionTableData> custom({
    Expression<String>? symbol,
    Expression<String>? underlyingSymbol,
    Expression<double>? strikePrice,
    Expression<String>? type,
    Expression<DateTime>? expiryDate,
    Expression<double>? currentPrice,
    Expression<double>? previousClose,
    Expression<double>? bidPrice,
    Expression<double>? askPrice,
    Expression<int>? bidQuantity,
    Expression<int>? askQuantity,
    Expression<double>? openInterest,
    Expression<double>? volume,
    Expression<double>? impliedVolatility,
    Expression<double>? delta,
    Expression<double>? gamma,
    Expression<double>? theta,
    Expression<double>? vega,
    Expression<double>? rho,
    Expression<DateTime>? lastUpdated,
    Expression<bool>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (symbol != null) 'symbol': symbol,
      if (underlyingSymbol != null) 'underlying_symbol': underlyingSymbol,
      if (strikePrice != null) 'strike_price': strikePrice,
      if (type != null) 'type': type,
      if (expiryDate != null) 'expiry_date': expiryDate,
      if (currentPrice != null) 'current_price': currentPrice,
      if (previousClose != null) 'previous_close': previousClose,
      if (bidPrice != null) 'bid_price': bidPrice,
      if (askPrice != null) 'ask_price': askPrice,
      if (bidQuantity != null) 'bid_quantity': bidQuantity,
      if (askQuantity != null) 'ask_quantity': askQuantity,
      if (openInterest != null) 'open_interest': openInterest,
      if (volume != null) 'volume': volume,
      if (impliedVolatility != null) 'implied_volatility': impliedVolatility,
      if (delta != null) 'delta': delta,
      if (gamma != null) 'gamma': gamma,
      if (theta != null) 'theta': theta,
      if (vega != null) 'vega': vega,
      if (rho != null) 'rho': rho,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OptionTableCompanion copyWith({
    Value<String>? symbol,
    Value<String>? underlyingSymbol,
    Value<double>? strikePrice,
    Value<String>? type,
    Value<DateTime>? expiryDate,
    Value<double>? currentPrice,
    Value<double>? previousClose,
    Value<double>? bidPrice,
    Value<double>? askPrice,
    Value<int>? bidQuantity,
    Value<int>? askQuantity,
    Value<double>? openInterest,
    Value<double>? volume,
    Value<double>? impliedVolatility,
    Value<double>? delta,
    Value<double>? gamma,
    Value<double>? theta,
    Value<double>? vega,
    Value<double>? rho,
    Value<DateTime>? lastUpdated,
    Value<bool>? isActive,
    Value<int>? rowid,
  }) {
    return OptionTableCompanion(
      symbol: symbol ?? this.symbol,
      underlyingSymbol: underlyingSymbol ?? this.underlyingSymbol,
      strikePrice: strikePrice ?? this.strikePrice,
      type: type ?? this.type,
      expiryDate: expiryDate ?? this.expiryDate,
      currentPrice: currentPrice ?? this.currentPrice,
      previousClose: previousClose ?? this.previousClose,
      bidPrice: bidPrice ?? this.bidPrice,
      askPrice: askPrice ?? this.askPrice,
      bidQuantity: bidQuantity ?? this.bidQuantity,
      askQuantity: askQuantity ?? this.askQuantity,
      openInterest: openInterest ?? this.openInterest,
      volume: volume ?? this.volume,
      impliedVolatility: impliedVolatility ?? this.impliedVolatility,
      delta: delta ?? this.delta,
      gamma: gamma ?? this.gamma,
      theta: theta ?? this.theta,
      vega: vega ?? this.vega,
      rho: rho ?? this.rho,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (underlyingSymbol.present) {
      map['underlying_symbol'] = Variable<String>(underlyingSymbol.value);
    }
    if (strikePrice.present) {
      map['strike_price'] = Variable<double>(strikePrice.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (expiryDate.present) {
      map['expiry_date'] = Variable<DateTime>(expiryDate.value);
    }
    if (currentPrice.present) {
      map['current_price'] = Variable<double>(currentPrice.value);
    }
    if (previousClose.present) {
      map['previous_close'] = Variable<double>(previousClose.value);
    }
    if (bidPrice.present) {
      map['bid_price'] = Variable<double>(bidPrice.value);
    }
    if (askPrice.present) {
      map['ask_price'] = Variable<double>(askPrice.value);
    }
    if (bidQuantity.present) {
      map['bid_quantity'] = Variable<int>(bidQuantity.value);
    }
    if (askQuantity.present) {
      map['ask_quantity'] = Variable<int>(askQuantity.value);
    }
    if (openInterest.present) {
      map['open_interest'] = Variable<double>(openInterest.value);
    }
    if (volume.present) {
      map['volume'] = Variable<double>(volume.value);
    }
    if (impliedVolatility.present) {
      map['implied_volatility'] = Variable<double>(impliedVolatility.value);
    }
    if (delta.present) {
      map['delta'] = Variable<double>(delta.value);
    }
    if (gamma.present) {
      map['gamma'] = Variable<double>(gamma.value);
    }
    if (theta.present) {
      map['theta'] = Variable<double>(theta.value);
    }
    if (vega.present) {
      map['vega'] = Variable<double>(vega.value);
    }
    if (rho.present) {
      map['rho'] = Variable<double>(rho.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<DateTime>(lastUpdated.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OptionTableCompanion(')
          ..write('symbol: $symbol, ')
          ..write('underlyingSymbol: $underlyingSymbol, ')
          ..write('strikePrice: $strikePrice, ')
          ..write('type: $type, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('currentPrice: $currentPrice, ')
          ..write('previousClose: $previousClose, ')
          ..write('bidPrice: $bidPrice, ')
          ..write('askPrice: $askPrice, ')
          ..write('bidQuantity: $bidQuantity, ')
          ..write('askQuantity: $askQuantity, ')
          ..write('openInterest: $openInterest, ')
          ..write('volume: $volume, ')
          ..write('impliedVolatility: $impliedVolatility, ')
          ..write('delta: $delta, ')
          ..write('gamma: $gamma, ')
          ..write('theta: $theta, ')
          ..write('vega: $vega, ')
          ..write('rho: $rho, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrdersTable extends Orders with TableInfo<$OrdersTable, Order> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrdersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: () => Uuid().v4(),
  );
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
    'symbol',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sideMeta = const VerificationMeta('side');
  @override
  late final GeneratedColumn<String> side = GeneratedColumn<String>(
    'side',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _orderTypeMeta = const VerificationMeta(
    'orderType',
  );
  @override
  late final GeneratedColumn<String> orderType = GeneratedColumn<String>(
    'order_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _productTypeMeta = const VerificationMeta(
    'productType',
  );
  @override
  late final GeneratedColumn<String> productType = GeneratedColumn<String>(
    'product_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
    'price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _filledQuantityMeta = const VerificationMeta(
    'filledQuantity',
  );
  @override
  late final GeneratedColumn<double> filledQuantity = GeneratedColumn<double>(
    'filled_quantity',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: Constant(0),
  );
  static const VerificationMeta _averagePriceMeta = const VerificationMeta(
    'averagePrice',
  );
  @override
  late final GeneratedColumn<double> averagePrice = GeneratedColumn<double>(
    'average_price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: Constant(0),
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _stopLossPriceMeta = const VerificationMeta(
    'stopLossPrice',
  );
  @override
  late final GeneratedColumn<double> stopLossPrice = GeneratedColumn<double>(
    'stop_loss_price',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _targetPriceMeta = const VerificationMeta(
    'targetPrice',
  );
  @override
  late final GeneratedColumn<double> targetPrice = GeneratedColumn<double>(
    'target_price',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _executedAtMeta = const VerificationMeta(
    'executedAt',
  );
  @override
  late final GeneratedColumn<DateTime> executedAt = GeneratedColumn<DateTime>(
    'executed_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    symbol,
    side,
    orderType,
    productType,
    price,
    quantity,
    filledQuantity,
    averagePrice,
    status,
    stopLossPrice,
    targetPrice,
    createdAt,
    updatedAt,
    executedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'orders';
  @override
  VerificationContext validateIntegrity(
    Insertable<Order> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('symbol')) {
      context.handle(
        _symbolMeta,
        symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta),
      );
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('side')) {
      context.handle(
        _sideMeta,
        side.isAcceptableOrUnknown(data['side']!, _sideMeta),
      );
    } else if (isInserting) {
      context.missing(_sideMeta);
    }
    if (data.containsKey('order_type')) {
      context.handle(
        _orderTypeMeta,
        orderType.isAcceptableOrUnknown(data['order_type']!, _orderTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_orderTypeMeta);
    }
    if (data.containsKey('product_type')) {
      context.handle(
        _productTypeMeta,
        productType.isAcceptableOrUnknown(
          data['product_type']!,
          _productTypeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_productTypeMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
        _priceMeta,
        price.isAcceptableOrUnknown(data['price']!, _priceMeta),
      );
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('filled_quantity')) {
      context.handle(
        _filledQuantityMeta,
        filledQuantity.isAcceptableOrUnknown(
          data['filled_quantity']!,
          _filledQuantityMeta,
        ),
      );
    }
    if (data.containsKey('average_price')) {
      context.handle(
        _averagePriceMeta,
        averagePrice.isAcceptableOrUnknown(
          data['average_price']!,
          _averagePriceMeta,
        ),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('stop_loss_price')) {
      context.handle(
        _stopLossPriceMeta,
        stopLossPrice.isAcceptableOrUnknown(
          data['stop_loss_price']!,
          _stopLossPriceMeta,
        ),
      );
    }
    if (data.containsKey('target_price')) {
      context.handle(
        _targetPriceMeta,
        targetPrice.isAcceptableOrUnknown(
          data['target_price']!,
          _targetPriceMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('executed_at')) {
      context.handle(
        _executedAtMeta,
        executedAt.isAcceptableOrUnknown(data['executed_at']!, _executedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Order map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Order(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      symbol: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}symbol'],
      )!,
      side: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}side'],
      )!,
      orderType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}order_type'],
      )!,
      productType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_type'],
      )!,
      price: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}price'],
      )!,
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quantity'],
      )!,
      filledQuantity: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}filled_quantity'],
      )!,
      averagePrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}average_price'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      stopLossPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}stop_loss_price'],
      ),
      targetPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}target_price'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      executedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}executed_at'],
      ),
    );
  }

  @override
  $OrdersTable createAlias(String alias) {
    return $OrdersTable(attachedDatabase, alias);
  }
}

class Order extends DataClass implements Insertable<Order> {
  final String id;
  final String symbol;
  final String side;
  final String orderType;
  final String productType;
  final double price;
  final int quantity;
  final double filledQuantity;
  final double averagePrice;
  final String status;
  final double? stopLossPrice;
  final double? targetPrice;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? executedAt;
  const Order({
    required this.id,
    required this.symbol,
    required this.side,
    required this.orderType,
    required this.productType,
    required this.price,
    required this.quantity,
    required this.filledQuantity,
    required this.averagePrice,
    required this.status,
    this.stopLossPrice,
    this.targetPrice,
    required this.createdAt,
    required this.updatedAt,
    this.executedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['symbol'] = Variable<String>(symbol);
    map['side'] = Variable<String>(side);
    map['order_type'] = Variable<String>(orderType);
    map['product_type'] = Variable<String>(productType);
    map['price'] = Variable<double>(price);
    map['quantity'] = Variable<int>(quantity);
    map['filled_quantity'] = Variable<double>(filledQuantity);
    map['average_price'] = Variable<double>(averagePrice);
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || stopLossPrice != null) {
      map['stop_loss_price'] = Variable<double>(stopLossPrice);
    }
    if (!nullToAbsent || targetPrice != null) {
      map['target_price'] = Variable<double>(targetPrice);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || executedAt != null) {
      map['executed_at'] = Variable<DateTime>(executedAt);
    }
    return map;
  }

  OrdersCompanion toCompanion(bool nullToAbsent) {
    return OrdersCompanion(
      id: Value(id),
      symbol: Value(symbol),
      side: Value(side),
      orderType: Value(orderType),
      productType: Value(productType),
      price: Value(price),
      quantity: Value(quantity),
      filledQuantity: Value(filledQuantity),
      averagePrice: Value(averagePrice),
      status: Value(status),
      stopLossPrice: stopLossPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(stopLossPrice),
      targetPrice: targetPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(targetPrice),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      executedAt: executedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(executedAt),
    );
  }

  factory Order.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Order(
      id: serializer.fromJson<String>(json['id']),
      symbol: serializer.fromJson<String>(json['symbol']),
      side: serializer.fromJson<String>(json['side']),
      orderType: serializer.fromJson<String>(json['orderType']),
      productType: serializer.fromJson<String>(json['productType']),
      price: serializer.fromJson<double>(json['price']),
      quantity: serializer.fromJson<int>(json['quantity']),
      filledQuantity: serializer.fromJson<double>(json['filledQuantity']),
      averagePrice: serializer.fromJson<double>(json['averagePrice']),
      status: serializer.fromJson<String>(json['status']),
      stopLossPrice: serializer.fromJson<double?>(json['stopLossPrice']),
      targetPrice: serializer.fromJson<double?>(json['targetPrice']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      executedAt: serializer.fromJson<DateTime?>(json['executedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'symbol': serializer.toJson<String>(symbol),
      'side': serializer.toJson<String>(side),
      'orderType': serializer.toJson<String>(orderType),
      'productType': serializer.toJson<String>(productType),
      'price': serializer.toJson<double>(price),
      'quantity': serializer.toJson<int>(quantity),
      'filledQuantity': serializer.toJson<double>(filledQuantity),
      'averagePrice': serializer.toJson<double>(averagePrice),
      'status': serializer.toJson<String>(status),
      'stopLossPrice': serializer.toJson<double?>(stopLossPrice),
      'targetPrice': serializer.toJson<double?>(targetPrice),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'executedAt': serializer.toJson<DateTime?>(executedAt),
    };
  }

  Order copyWith({
    String? id,
    String? symbol,
    String? side,
    String? orderType,
    String? productType,
    double? price,
    int? quantity,
    double? filledQuantity,
    double? averagePrice,
    String? status,
    Value<double?> stopLossPrice = const Value.absent(),
    Value<double?> targetPrice = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> executedAt = const Value.absent(),
  }) => Order(
    id: id ?? this.id,
    symbol: symbol ?? this.symbol,
    side: side ?? this.side,
    orderType: orderType ?? this.orderType,
    productType: productType ?? this.productType,
    price: price ?? this.price,
    quantity: quantity ?? this.quantity,
    filledQuantity: filledQuantity ?? this.filledQuantity,
    averagePrice: averagePrice ?? this.averagePrice,
    status: status ?? this.status,
    stopLossPrice: stopLossPrice.present
        ? stopLossPrice.value
        : this.stopLossPrice,
    targetPrice: targetPrice.present ? targetPrice.value : this.targetPrice,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    executedAt: executedAt.present ? executedAt.value : this.executedAt,
  );
  Order copyWithCompanion(OrdersCompanion data) {
    return Order(
      id: data.id.present ? data.id.value : this.id,
      symbol: data.symbol.present ? data.symbol.value : this.symbol,
      side: data.side.present ? data.side.value : this.side,
      orderType: data.orderType.present ? data.orderType.value : this.orderType,
      productType: data.productType.present
          ? data.productType.value
          : this.productType,
      price: data.price.present ? data.price.value : this.price,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      filledQuantity: data.filledQuantity.present
          ? data.filledQuantity.value
          : this.filledQuantity,
      averagePrice: data.averagePrice.present
          ? data.averagePrice.value
          : this.averagePrice,
      status: data.status.present ? data.status.value : this.status,
      stopLossPrice: data.stopLossPrice.present
          ? data.stopLossPrice.value
          : this.stopLossPrice,
      targetPrice: data.targetPrice.present
          ? data.targetPrice.value
          : this.targetPrice,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      executedAt: data.executedAt.present
          ? data.executedAt.value
          : this.executedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Order(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('side: $side, ')
          ..write('orderType: $orderType, ')
          ..write('productType: $productType, ')
          ..write('price: $price, ')
          ..write('quantity: $quantity, ')
          ..write('filledQuantity: $filledQuantity, ')
          ..write('averagePrice: $averagePrice, ')
          ..write('status: $status, ')
          ..write('stopLossPrice: $stopLossPrice, ')
          ..write('targetPrice: $targetPrice, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('executedAt: $executedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    symbol,
    side,
    orderType,
    productType,
    price,
    quantity,
    filledQuantity,
    averagePrice,
    status,
    stopLossPrice,
    targetPrice,
    createdAt,
    updatedAt,
    executedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Order &&
          other.id == this.id &&
          other.symbol == this.symbol &&
          other.side == this.side &&
          other.orderType == this.orderType &&
          other.productType == this.productType &&
          other.price == this.price &&
          other.quantity == this.quantity &&
          other.filledQuantity == this.filledQuantity &&
          other.averagePrice == this.averagePrice &&
          other.status == this.status &&
          other.stopLossPrice == this.stopLossPrice &&
          other.targetPrice == this.targetPrice &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.executedAt == this.executedAt);
}

class OrdersCompanion extends UpdateCompanion<Order> {
  final Value<String> id;
  final Value<String> symbol;
  final Value<String> side;
  final Value<String> orderType;
  final Value<String> productType;
  final Value<double> price;
  final Value<int> quantity;
  final Value<double> filledQuantity;
  final Value<double> averagePrice;
  final Value<String> status;
  final Value<double?> stopLossPrice;
  final Value<double?> targetPrice;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> executedAt;
  final Value<int> rowid;
  const OrdersCompanion({
    this.id = const Value.absent(),
    this.symbol = const Value.absent(),
    this.side = const Value.absent(),
    this.orderType = const Value.absent(),
    this.productType = const Value.absent(),
    this.price = const Value.absent(),
    this.quantity = const Value.absent(),
    this.filledQuantity = const Value.absent(),
    this.averagePrice = const Value.absent(),
    this.status = const Value.absent(),
    this.stopLossPrice = const Value.absent(),
    this.targetPrice = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.executedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrdersCompanion.insert({
    this.id = const Value.absent(),
    required String symbol,
    required String side,
    required String orderType,
    required String productType,
    required double price,
    required int quantity,
    this.filledQuantity = const Value.absent(),
    this.averagePrice = const Value.absent(),
    required String status,
    this.stopLossPrice = const Value.absent(),
    this.targetPrice = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.executedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : symbol = Value(symbol),
       side = Value(side),
       orderType = Value(orderType),
       productType = Value(productType),
       price = Value(price),
       quantity = Value(quantity),
       status = Value(status),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<Order> custom({
    Expression<String>? id,
    Expression<String>? symbol,
    Expression<String>? side,
    Expression<String>? orderType,
    Expression<String>? productType,
    Expression<double>? price,
    Expression<int>? quantity,
    Expression<double>? filledQuantity,
    Expression<double>? averagePrice,
    Expression<String>? status,
    Expression<double>? stopLossPrice,
    Expression<double>? targetPrice,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? executedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (symbol != null) 'symbol': symbol,
      if (side != null) 'side': side,
      if (orderType != null) 'order_type': orderType,
      if (productType != null) 'product_type': productType,
      if (price != null) 'price': price,
      if (quantity != null) 'quantity': quantity,
      if (filledQuantity != null) 'filled_quantity': filledQuantity,
      if (averagePrice != null) 'average_price': averagePrice,
      if (status != null) 'status': status,
      if (stopLossPrice != null) 'stop_loss_price': stopLossPrice,
      if (targetPrice != null) 'target_price': targetPrice,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (executedAt != null) 'executed_at': executedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrdersCompanion copyWith({
    Value<String>? id,
    Value<String>? symbol,
    Value<String>? side,
    Value<String>? orderType,
    Value<String>? productType,
    Value<double>? price,
    Value<int>? quantity,
    Value<double>? filledQuantity,
    Value<double>? averagePrice,
    Value<String>? status,
    Value<double?>? stopLossPrice,
    Value<double?>? targetPrice,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? executedAt,
    Value<int>? rowid,
  }) {
    return OrdersCompanion(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      side: side ?? this.side,
      orderType: orderType ?? this.orderType,
      productType: productType ?? this.productType,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      filledQuantity: filledQuantity ?? this.filledQuantity,
      averagePrice: averagePrice ?? this.averagePrice,
      status: status ?? this.status,
      stopLossPrice: stopLossPrice ?? this.stopLossPrice,
      targetPrice: targetPrice ?? this.targetPrice,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      executedAt: executedAt ?? this.executedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (side.present) {
      map['side'] = Variable<String>(side.value);
    }
    if (orderType.present) {
      map['order_type'] = Variable<String>(orderType.value);
    }
    if (productType.present) {
      map['product_type'] = Variable<String>(productType.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (filledQuantity.present) {
      map['filled_quantity'] = Variable<double>(filledQuantity.value);
    }
    if (averagePrice.present) {
      map['average_price'] = Variable<double>(averagePrice.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (stopLossPrice.present) {
      map['stop_loss_price'] = Variable<double>(stopLossPrice.value);
    }
    if (targetPrice.present) {
      map['target_price'] = Variable<double>(targetPrice.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (executedAt.present) {
      map['executed_at'] = Variable<DateTime>(executedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrdersCompanion(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('side: $side, ')
          ..write('orderType: $orderType, ')
          ..write('productType: $productType, ')
          ..write('price: $price, ')
          ..write('quantity: $quantity, ')
          ..write('filledQuantity: $filledQuantity, ')
          ..write('averagePrice: $averagePrice, ')
          ..write('status: $status, ')
          ..write('stopLossPrice: $stopLossPrice, ')
          ..write('targetPrice: $targetPrice, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('executedAt: $executedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PositionsTable extends Positions
    with TableInfo<$PositionsTable, Position> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PositionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: () => Uuid().v4(),
  );
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
    'symbol',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: Constant(''),
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _entryPriceMeta = const VerificationMeta(
    'entryPrice',
  );
  @override
  late final GeneratedColumn<double> entryPrice = GeneratedColumn<double>(
    'entry_price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currentPriceMeta = const VerificationMeta(
    'currentPrice',
  );
  @override
  late final GeneratedColumn<double> currentPrice = GeneratedColumn<double>(
    'current_price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: Constant(0),
  );
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pnlMeta = const VerificationMeta('pnl');
  @override
  late final GeneratedColumn<double> pnl = GeneratedColumn<double>(
    'pnl',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: Constant(0),
  );
  static const VerificationMeta _pnlPercentageMeta = const VerificationMeta(
    'pnlPercentage',
  );
  @override
  late final GeneratedColumn<double> pnlPercentage = GeneratedColumn<double>(
    'pnl_percentage',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: Constant(0),
  );
  static const VerificationMeta _dayPnlMeta = const VerificationMeta('dayPnl');
  @override
  late final GeneratedColumn<double> dayPnl = GeneratedColumn<double>(
    'day_pnl',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: Constant(0),
  );
  static const VerificationMeta _dayPnlPercentageMeta = const VerificationMeta(
    'dayPnlPercentage',
  );
  @override
  late final GeneratedColumn<double> dayPnlPercentage = GeneratedColumn<double>(
    'day_pnl_percentage',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: Constant(0),
  );
  static const VerificationMeta _openedAtMeta = const VerificationMeta(
    'openedAt',
  );
  @override
  late final GeneratedColumn<DateTime> openedAt = GeneratedColumn<DateTime>(
    'opened_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _closedAtMeta = const VerificationMeta(
    'closedAt',
  );
  @override
  late final GeneratedColumn<DateTime> closedAt = GeneratedColumn<DateTime>(
    'closed_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: Constant(true),
  );
  static const VerificationMeta _brokerageMeta = const VerificationMeta(
    'brokerage',
  );
  @override
  late final GeneratedColumn<double> brokerage = GeneratedColumn<double>(
    'brokerage',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: Constant(20),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    symbol,
    name,
    type,
    entryPrice,
    currentPrice,
    quantity,
    pnl,
    pnlPercentage,
    dayPnl,
    dayPnlPercentage,
    openedAt,
    closedAt,
    isActive,
    brokerage,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'positions';
  @override
  VerificationContext validateIntegrity(
    Insertable<Position> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('symbol')) {
      context.handle(
        _symbolMeta,
        symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta),
      );
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('entry_price')) {
      context.handle(
        _entryPriceMeta,
        entryPrice.isAcceptableOrUnknown(data['entry_price']!, _entryPriceMeta),
      );
    } else if (isInserting) {
      context.missing(_entryPriceMeta);
    }
    if (data.containsKey('current_price')) {
      context.handle(
        _currentPriceMeta,
        currentPrice.isAcceptableOrUnknown(
          data['current_price']!,
          _currentPriceMeta,
        ),
      );
    }
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('pnl')) {
      context.handle(
        _pnlMeta,
        pnl.isAcceptableOrUnknown(data['pnl']!, _pnlMeta),
      );
    }
    if (data.containsKey('pnl_percentage')) {
      context.handle(
        _pnlPercentageMeta,
        pnlPercentage.isAcceptableOrUnknown(
          data['pnl_percentage']!,
          _pnlPercentageMeta,
        ),
      );
    }
    if (data.containsKey('day_pnl')) {
      context.handle(
        _dayPnlMeta,
        dayPnl.isAcceptableOrUnknown(data['day_pnl']!, _dayPnlMeta),
      );
    }
    if (data.containsKey('day_pnl_percentage')) {
      context.handle(
        _dayPnlPercentageMeta,
        dayPnlPercentage.isAcceptableOrUnknown(
          data['day_pnl_percentage']!,
          _dayPnlPercentageMeta,
        ),
      );
    }
    if (data.containsKey('opened_at')) {
      context.handle(
        _openedAtMeta,
        openedAt.isAcceptableOrUnknown(data['opened_at']!, _openedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_openedAtMeta);
    }
    if (data.containsKey('closed_at')) {
      context.handle(
        _closedAtMeta,
        closedAt.isAcceptableOrUnknown(data['closed_at']!, _closedAtMeta),
      );
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    if (data.containsKey('brokerage')) {
      context.handle(
        _brokerageMeta,
        brokerage.isAcceptableOrUnknown(data['brokerage']!, _brokerageMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Position map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Position(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      symbol: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}symbol'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      entryPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}entry_price'],
      )!,
      currentPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}current_price'],
      )!,
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quantity'],
      )!,
      pnl: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}pnl'],
      )!,
      pnlPercentage: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}pnl_percentage'],
      )!,
      dayPnl: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}day_pnl'],
      )!,
      dayPnlPercentage: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}day_pnl_percentage'],
      )!,
      openedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}opened_at'],
      )!,
      closedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}closed_at'],
      ),
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      brokerage: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}brokerage'],
      )!,
    );
  }

  @override
  $PositionsTable createAlias(String alias) {
    return $PositionsTable(attachedDatabase, alias);
  }
}

class Position extends DataClass implements Insertable<Position> {
  final String id;
  final String symbol;
  final String name;
  final String type;
  final double entryPrice;
  final double currentPrice;
  final int quantity;
  final double pnl;
  final double pnlPercentage;
  final double dayPnl;
  final double dayPnlPercentage;
  final DateTime openedAt;
  final DateTime? closedAt;
  final bool isActive;
  final double brokerage;
  const Position({
    required this.id,
    required this.symbol,
    required this.name,
    required this.type,
    required this.entryPrice,
    required this.currentPrice,
    required this.quantity,
    required this.pnl,
    required this.pnlPercentage,
    required this.dayPnl,
    required this.dayPnlPercentage,
    required this.openedAt,
    this.closedAt,
    required this.isActive,
    required this.brokerage,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['symbol'] = Variable<String>(symbol);
    map['name'] = Variable<String>(name);
    map['type'] = Variable<String>(type);
    map['entry_price'] = Variable<double>(entryPrice);
    map['current_price'] = Variable<double>(currentPrice);
    map['quantity'] = Variable<int>(quantity);
    map['pnl'] = Variable<double>(pnl);
    map['pnl_percentage'] = Variable<double>(pnlPercentage);
    map['day_pnl'] = Variable<double>(dayPnl);
    map['day_pnl_percentage'] = Variable<double>(dayPnlPercentage);
    map['opened_at'] = Variable<DateTime>(openedAt);
    if (!nullToAbsent || closedAt != null) {
      map['closed_at'] = Variable<DateTime>(closedAt);
    }
    map['is_active'] = Variable<bool>(isActive);
    map['brokerage'] = Variable<double>(brokerage);
    return map;
  }

  PositionsCompanion toCompanion(bool nullToAbsent) {
    return PositionsCompanion(
      id: Value(id),
      symbol: Value(symbol),
      name: Value(name),
      type: Value(type),
      entryPrice: Value(entryPrice),
      currentPrice: Value(currentPrice),
      quantity: Value(quantity),
      pnl: Value(pnl),
      pnlPercentage: Value(pnlPercentage),
      dayPnl: Value(dayPnl),
      dayPnlPercentage: Value(dayPnlPercentage),
      openedAt: Value(openedAt),
      closedAt: closedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(closedAt),
      isActive: Value(isActive),
      brokerage: Value(brokerage),
    );
  }

  factory Position.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Position(
      id: serializer.fromJson<String>(json['id']),
      symbol: serializer.fromJson<String>(json['symbol']),
      name: serializer.fromJson<String>(json['name']),
      type: serializer.fromJson<String>(json['type']),
      entryPrice: serializer.fromJson<double>(json['entryPrice']),
      currentPrice: serializer.fromJson<double>(json['currentPrice']),
      quantity: serializer.fromJson<int>(json['quantity']),
      pnl: serializer.fromJson<double>(json['pnl']),
      pnlPercentage: serializer.fromJson<double>(json['pnlPercentage']),
      dayPnl: serializer.fromJson<double>(json['dayPnl']),
      dayPnlPercentage: serializer.fromJson<double>(json['dayPnlPercentage']),
      openedAt: serializer.fromJson<DateTime>(json['openedAt']),
      closedAt: serializer.fromJson<DateTime?>(json['closedAt']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      brokerage: serializer.fromJson<double>(json['brokerage']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'symbol': serializer.toJson<String>(symbol),
      'name': serializer.toJson<String>(name),
      'type': serializer.toJson<String>(type),
      'entryPrice': serializer.toJson<double>(entryPrice),
      'currentPrice': serializer.toJson<double>(currentPrice),
      'quantity': serializer.toJson<int>(quantity),
      'pnl': serializer.toJson<double>(pnl),
      'pnlPercentage': serializer.toJson<double>(pnlPercentage),
      'dayPnl': serializer.toJson<double>(dayPnl),
      'dayPnlPercentage': serializer.toJson<double>(dayPnlPercentage),
      'openedAt': serializer.toJson<DateTime>(openedAt),
      'closedAt': serializer.toJson<DateTime?>(closedAt),
      'isActive': serializer.toJson<bool>(isActive),
      'brokerage': serializer.toJson<double>(brokerage),
    };
  }

  Position copyWith({
    String? id,
    String? symbol,
    String? name,
    String? type,
    double? entryPrice,
    double? currentPrice,
    int? quantity,
    double? pnl,
    double? pnlPercentage,
    double? dayPnl,
    double? dayPnlPercentage,
    DateTime? openedAt,
    Value<DateTime?> closedAt = const Value.absent(),
    bool? isActive,
    double? brokerage,
  }) => Position(
    id: id ?? this.id,
    symbol: symbol ?? this.symbol,
    name: name ?? this.name,
    type: type ?? this.type,
    entryPrice: entryPrice ?? this.entryPrice,
    currentPrice: currentPrice ?? this.currentPrice,
    quantity: quantity ?? this.quantity,
    pnl: pnl ?? this.pnl,
    pnlPercentage: pnlPercentage ?? this.pnlPercentage,
    dayPnl: dayPnl ?? this.dayPnl,
    dayPnlPercentage: dayPnlPercentage ?? this.dayPnlPercentage,
    openedAt: openedAt ?? this.openedAt,
    closedAt: closedAt.present ? closedAt.value : this.closedAt,
    isActive: isActive ?? this.isActive,
    brokerage: brokerage ?? this.brokerage,
  );
  Position copyWithCompanion(PositionsCompanion data) {
    return Position(
      id: data.id.present ? data.id.value : this.id,
      symbol: data.symbol.present ? data.symbol.value : this.symbol,
      name: data.name.present ? data.name.value : this.name,
      type: data.type.present ? data.type.value : this.type,
      entryPrice: data.entryPrice.present
          ? data.entryPrice.value
          : this.entryPrice,
      currentPrice: data.currentPrice.present
          ? data.currentPrice.value
          : this.currentPrice,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      pnl: data.pnl.present ? data.pnl.value : this.pnl,
      pnlPercentage: data.pnlPercentage.present
          ? data.pnlPercentage.value
          : this.pnlPercentage,
      dayPnl: data.dayPnl.present ? data.dayPnl.value : this.dayPnl,
      dayPnlPercentage: data.dayPnlPercentage.present
          ? data.dayPnlPercentage.value
          : this.dayPnlPercentage,
      openedAt: data.openedAt.present ? data.openedAt.value : this.openedAt,
      closedAt: data.closedAt.present ? data.closedAt.value : this.closedAt,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      brokerage: data.brokerage.present ? data.brokerage.value : this.brokerage,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Position(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('entryPrice: $entryPrice, ')
          ..write('currentPrice: $currentPrice, ')
          ..write('quantity: $quantity, ')
          ..write('pnl: $pnl, ')
          ..write('pnlPercentage: $pnlPercentage, ')
          ..write('dayPnl: $dayPnl, ')
          ..write('dayPnlPercentage: $dayPnlPercentage, ')
          ..write('openedAt: $openedAt, ')
          ..write('closedAt: $closedAt, ')
          ..write('isActive: $isActive, ')
          ..write('brokerage: $brokerage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    symbol,
    name,
    type,
    entryPrice,
    currentPrice,
    quantity,
    pnl,
    pnlPercentage,
    dayPnl,
    dayPnlPercentage,
    openedAt,
    closedAt,
    isActive,
    brokerage,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Position &&
          other.id == this.id &&
          other.symbol == this.symbol &&
          other.name == this.name &&
          other.type == this.type &&
          other.entryPrice == this.entryPrice &&
          other.currentPrice == this.currentPrice &&
          other.quantity == this.quantity &&
          other.pnl == this.pnl &&
          other.pnlPercentage == this.pnlPercentage &&
          other.dayPnl == this.dayPnl &&
          other.dayPnlPercentage == this.dayPnlPercentage &&
          other.openedAt == this.openedAt &&
          other.closedAt == this.closedAt &&
          other.isActive == this.isActive &&
          other.brokerage == this.brokerage);
}

class PositionsCompanion extends UpdateCompanion<Position> {
  final Value<String> id;
  final Value<String> symbol;
  final Value<String> name;
  final Value<String> type;
  final Value<double> entryPrice;
  final Value<double> currentPrice;
  final Value<int> quantity;
  final Value<double> pnl;
  final Value<double> pnlPercentage;
  final Value<double> dayPnl;
  final Value<double> dayPnlPercentage;
  final Value<DateTime> openedAt;
  final Value<DateTime?> closedAt;
  final Value<bool> isActive;
  final Value<double> brokerage;
  final Value<int> rowid;
  const PositionsCompanion({
    this.id = const Value.absent(),
    this.symbol = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.entryPrice = const Value.absent(),
    this.currentPrice = const Value.absent(),
    this.quantity = const Value.absent(),
    this.pnl = const Value.absent(),
    this.pnlPercentage = const Value.absent(),
    this.dayPnl = const Value.absent(),
    this.dayPnlPercentage = const Value.absent(),
    this.openedAt = const Value.absent(),
    this.closedAt = const Value.absent(),
    this.isActive = const Value.absent(),
    this.brokerage = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PositionsCompanion.insert({
    this.id = const Value.absent(),
    required String symbol,
    this.name = const Value.absent(),
    required String type,
    required double entryPrice,
    this.currentPrice = const Value.absent(),
    required int quantity,
    this.pnl = const Value.absent(),
    this.pnlPercentage = const Value.absent(),
    this.dayPnl = const Value.absent(),
    this.dayPnlPercentage = const Value.absent(),
    required DateTime openedAt,
    this.closedAt = const Value.absent(),
    this.isActive = const Value.absent(),
    this.brokerage = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : symbol = Value(symbol),
       type = Value(type),
       entryPrice = Value(entryPrice),
       quantity = Value(quantity),
       openedAt = Value(openedAt);
  static Insertable<Position> custom({
    Expression<String>? id,
    Expression<String>? symbol,
    Expression<String>? name,
    Expression<String>? type,
    Expression<double>? entryPrice,
    Expression<double>? currentPrice,
    Expression<int>? quantity,
    Expression<double>? pnl,
    Expression<double>? pnlPercentage,
    Expression<double>? dayPnl,
    Expression<double>? dayPnlPercentage,
    Expression<DateTime>? openedAt,
    Expression<DateTime>? closedAt,
    Expression<bool>? isActive,
    Expression<double>? brokerage,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (symbol != null) 'symbol': symbol,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (entryPrice != null) 'entry_price': entryPrice,
      if (currentPrice != null) 'current_price': currentPrice,
      if (quantity != null) 'quantity': quantity,
      if (pnl != null) 'pnl': pnl,
      if (pnlPercentage != null) 'pnl_percentage': pnlPercentage,
      if (dayPnl != null) 'day_pnl': dayPnl,
      if (dayPnlPercentage != null) 'day_pnl_percentage': dayPnlPercentage,
      if (openedAt != null) 'opened_at': openedAt,
      if (closedAt != null) 'closed_at': closedAt,
      if (isActive != null) 'is_active': isActive,
      if (brokerage != null) 'brokerage': brokerage,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PositionsCompanion copyWith({
    Value<String>? id,
    Value<String>? symbol,
    Value<String>? name,
    Value<String>? type,
    Value<double>? entryPrice,
    Value<double>? currentPrice,
    Value<int>? quantity,
    Value<double>? pnl,
    Value<double>? pnlPercentage,
    Value<double>? dayPnl,
    Value<double>? dayPnlPercentage,
    Value<DateTime>? openedAt,
    Value<DateTime?>? closedAt,
    Value<bool>? isActive,
    Value<double>? brokerage,
    Value<int>? rowid,
  }) {
    return PositionsCompanion(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      type: type ?? this.type,
      entryPrice: entryPrice ?? this.entryPrice,
      currentPrice: currentPrice ?? this.currentPrice,
      quantity: quantity ?? this.quantity,
      pnl: pnl ?? this.pnl,
      pnlPercentage: pnlPercentage ?? this.pnlPercentage,
      dayPnl: dayPnl ?? this.dayPnl,
      dayPnlPercentage: dayPnlPercentage ?? this.dayPnlPercentage,
      openedAt: openedAt ?? this.openedAt,
      closedAt: closedAt ?? this.closedAt,
      isActive: isActive ?? this.isActive,
      brokerage: brokerage ?? this.brokerage,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (entryPrice.present) {
      map['entry_price'] = Variable<double>(entryPrice.value);
    }
    if (currentPrice.present) {
      map['current_price'] = Variable<double>(currentPrice.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (pnl.present) {
      map['pnl'] = Variable<double>(pnl.value);
    }
    if (pnlPercentage.present) {
      map['pnl_percentage'] = Variable<double>(pnlPercentage.value);
    }
    if (dayPnl.present) {
      map['day_pnl'] = Variable<double>(dayPnl.value);
    }
    if (dayPnlPercentage.present) {
      map['day_pnl_percentage'] = Variable<double>(dayPnlPercentage.value);
    }
    if (openedAt.present) {
      map['opened_at'] = Variable<DateTime>(openedAt.value);
    }
    if (closedAt.present) {
      map['closed_at'] = Variable<DateTime>(closedAt.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (brokerage.present) {
      map['brokerage'] = Variable<double>(brokerage.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PositionsCompanion(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('entryPrice: $entryPrice, ')
          ..write('currentPrice: $currentPrice, ')
          ..write('quantity: $quantity, ')
          ..write('pnl: $pnl, ')
          ..write('pnlPercentage: $pnlPercentage, ')
          ..write('dayPnl: $dayPnl, ')
          ..write('dayPnlPercentage: $dayPnlPercentage, ')
          ..write('openedAt: $openedAt, ')
          ..write('closedAt: $closedAt, ')
          ..write('isActive: $isActive, ')
          ..write('brokerage: $brokerage, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $WatchlistNamesTable extends WatchlistNames
    with TableInfo<$WatchlistNamesTable, WatchlistName> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WatchlistNamesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 20,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _positionMeta = const VerificationMeta(
    'position',
  );
  @override
  late final GeneratedColumn<int> position = GeneratedColumn<int>(
    'position',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, position];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'watchlist_names';
  @override
  VerificationContext validateIntegrity(
    Insertable<WatchlistName> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('position')) {
      context.handle(
        _positionMeta,
        position.isAcceptableOrUnknown(data['position']!, _positionMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WatchlistName map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WatchlistName(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      position: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}position'],
      )!,
    );
  }

  @override
  $WatchlistNamesTable createAlias(String alias) {
    return $WatchlistNamesTable(attachedDatabase, alias);
  }
}

class WatchlistName extends DataClass implements Insertable<WatchlistName> {
  final int id;
  final String name;
  final int position;
  const WatchlistName({
    required this.id,
    required this.name,
    required this.position,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['position'] = Variable<int>(position);
    return map;
  }

  WatchlistNamesCompanion toCompanion(bool nullToAbsent) {
    return WatchlistNamesCompanion(
      id: Value(id),
      name: Value(name),
      position: Value(position),
    );
  }

  factory WatchlistName.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WatchlistName(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      position: serializer.fromJson<int>(json['position']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'position': serializer.toJson<int>(position),
    };
  }

  WatchlistName copyWith({int? id, String? name, int? position}) =>
      WatchlistName(
        id: id ?? this.id,
        name: name ?? this.name,
        position: position ?? this.position,
      );
  WatchlistName copyWithCompanion(WatchlistNamesCompanion data) {
    return WatchlistName(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      position: data.position.present ? data.position.value : this.position,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WatchlistName(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('position: $position')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, position);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WatchlistName &&
          other.id == this.id &&
          other.name == this.name &&
          other.position == this.position);
}

class WatchlistNamesCompanion extends UpdateCompanion<WatchlistName> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> position;
  const WatchlistNamesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.position = const Value.absent(),
  });
  WatchlistNamesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.position = const Value.absent(),
  }) : name = Value(name);
  static Insertable<WatchlistName> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? position,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (position != null) 'position': position,
    });
  }

  WatchlistNamesCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<int>? position,
  }) {
    return WatchlistNamesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      position: position ?? this.position,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (position.present) {
      map['position'] = Variable<int>(position.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WatchlistNamesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('position: $position')
          ..write(')'))
        .toString();
  }
}

class $WatchlistItemsTable extends WatchlistItems
    with TableInfo<$WatchlistItemsTable, WatchlistItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WatchlistItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _watchlistIdMeta = const VerificationMeta(
    'watchlistId',
  );
  @override
  late final GeneratedColumn<int> watchlistId = GeneratedColumn<int>(
    'watchlist_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES watchlist_names (id)',
    ),
  );
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
    'symbol',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _instrumentTypeMeta = const VerificationMeta(
    'instrumentType',
  );
  @override
  late final GeneratedColumn<String> instrumentType = GeneratedColumn<String>(
    'instrument_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('STOCK'),
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _addedAtMeta = const VerificationMeta(
    'addedAt',
  );
  @override
  late final GeneratedColumn<DateTime> addedAt = GeneratedColumn<DateTime>(
    'added_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    watchlistId,
    symbol,
    name,
    instrumentType,
    sortOrder,
    addedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'watchlist_items';
  @override
  VerificationContext validateIntegrity(
    Insertable<WatchlistItem> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('watchlist_id')) {
      context.handle(
        _watchlistIdMeta,
        watchlistId.isAcceptableOrUnknown(
          data['watchlist_id']!,
          _watchlistIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_watchlistIdMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(
        _symbolMeta,
        symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta),
      );
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('instrument_type')) {
      context.handle(
        _instrumentTypeMeta,
        instrumentType.isAcceptableOrUnknown(
          data['instrument_type']!,
          _instrumentTypeMeta,
        ),
      );
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    }
    if (data.containsKey('added_at')) {
      context.handle(
        _addedAtMeta,
        addedAt.isAcceptableOrUnknown(data['added_at']!, _addedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_addedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WatchlistItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WatchlistItem(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      watchlistId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}watchlist_id'],
      )!,
      symbol: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}symbol'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      instrumentType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}instrument_type'],
      )!,
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
      addedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}added_at'],
      )!,
    );
  }

  @override
  $WatchlistItemsTable createAlias(String alias) {
    return $WatchlistItemsTable(attachedDatabase, alias);
  }
}

class WatchlistItem extends DataClass implements Insertable<WatchlistItem> {
  final int id;
  final int watchlistId;
  final String symbol;
  final String name;
  final String instrumentType;
  final int sortOrder;
  final DateTime addedAt;
  const WatchlistItem({
    required this.id,
    required this.watchlistId,
    required this.symbol,
    required this.name,
    required this.instrumentType,
    required this.sortOrder,
    required this.addedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['watchlist_id'] = Variable<int>(watchlistId);
    map['symbol'] = Variable<String>(symbol);
    map['name'] = Variable<String>(name);
    map['instrument_type'] = Variable<String>(instrumentType);
    map['sort_order'] = Variable<int>(sortOrder);
    map['added_at'] = Variable<DateTime>(addedAt);
    return map;
  }

  WatchlistItemsCompanion toCompanion(bool nullToAbsent) {
    return WatchlistItemsCompanion(
      id: Value(id),
      watchlistId: Value(watchlistId),
      symbol: Value(symbol),
      name: Value(name),
      instrumentType: Value(instrumentType),
      sortOrder: Value(sortOrder),
      addedAt: Value(addedAt),
    );
  }

  factory WatchlistItem.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WatchlistItem(
      id: serializer.fromJson<int>(json['id']),
      watchlistId: serializer.fromJson<int>(json['watchlistId']),
      symbol: serializer.fromJson<String>(json['symbol']),
      name: serializer.fromJson<String>(json['name']),
      instrumentType: serializer.fromJson<String>(json['instrumentType']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
      addedAt: serializer.fromJson<DateTime>(json['addedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'watchlistId': serializer.toJson<int>(watchlistId),
      'symbol': serializer.toJson<String>(symbol),
      'name': serializer.toJson<String>(name),
      'instrumentType': serializer.toJson<String>(instrumentType),
      'sortOrder': serializer.toJson<int>(sortOrder),
      'addedAt': serializer.toJson<DateTime>(addedAt),
    };
  }

  WatchlistItem copyWith({
    int? id,
    int? watchlistId,
    String? symbol,
    String? name,
    String? instrumentType,
    int? sortOrder,
    DateTime? addedAt,
  }) => WatchlistItem(
    id: id ?? this.id,
    watchlistId: watchlistId ?? this.watchlistId,
    symbol: symbol ?? this.symbol,
    name: name ?? this.name,
    instrumentType: instrumentType ?? this.instrumentType,
    sortOrder: sortOrder ?? this.sortOrder,
    addedAt: addedAt ?? this.addedAt,
  );
  WatchlistItem copyWithCompanion(WatchlistItemsCompanion data) {
    return WatchlistItem(
      id: data.id.present ? data.id.value : this.id,
      watchlistId: data.watchlistId.present
          ? data.watchlistId.value
          : this.watchlistId,
      symbol: data.symbol.present ? data.symbol.value : this.symbol,
      name: data.name.present ? data.name.value : this.name,
      instrumentType: data.instrumentType.present
          ? data.instrumentType.value
          : this.instrumentType,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
      addedAt: data.addedAt.present ? data.addedAt.value : this.addedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WatchlistItem(')
          ..write('id: $id, ')
          ..write('watchlistId: $watchlistId, ')
          ..write('symbol: $symbol, ')
          ..write('name: $name, ')
          ..write('instrumentType: $instrumentType, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('addedAt: $addedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    watchlistId,
    symbol,
    name,
    instrumentType,
    sortOrder,
    addedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WatchlistItem &&
          other.id == this.id &&
          other.watchlistId == this.watchlistId &&
          other.symbol == this.symbol &&
          other.name == this.name &&
          other.instrumentType == this.instrumentType &&
          other.sortOrder == this.sortOrder &&
          other.addedAt == this.addedAt);
}

class WatchlistItemsCompanion extends UpdateCompanion<WatchlistItem> {
  final Value<int> id;
  final Value<int> watchlistId;
  final Value<String> symbol;
  final Value<String> name;
  final Value<String> instrumentType;
  final Value<int> sortOrder;
  final Value<DateTime> addedAt;
  const WatchlistItemsCompanion({
    this.id = const Value.absent(),
    this.watchlistId = const Value.absent(),
    this.symbol = const Value.absent(),
    this.name = const Value.absent(),
    this.instrumentType = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.addedAt = const Value.absent(),
  });
  WatchlistItemsCompanion.insert({
    this.id = const Value.absent(),
    required int watchlistId,
    required String symbol,
    required String name,
    this.instrumentType = const Value.absent(),
    this.sortOrder = const Value.absent(),
    required DateTime addedAt,
  }) : watchlistId = Value(watchlistId),
       symbol = Value(symbol),
       name = Value(name),
       addedAt = Value(addedAt);
  static Insertable<WatchlistItem> custom({
    Expression<int>? id,
    Expression<int>? watchlistId,
    Expression<String>? symbol,
    Expression<String>? name,
    Expression<String>? instrumentType,
    Expression<int>? sortOrder,
    Expression<DateTime>? addedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (watchlistId != null) 'watchlist_id': watchlistId,
      if (symbol != null) 'symbol': symbol,
      if (name != null) 'name': name,
      if (instrumentType != null) 'instrument_type': instrumentType,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (addedAt != null) 'added_at': addedAt,
    });
  }

  WatchlistItemsCompanion copyWith({
    Value<int>? id,
    Value<int>? watchlistId,
    Value<String>? symbol,
    Value<String>? name,
    Value<String>? instrumentType,
    Value<int>? sortOrder,
    Value<DateTime>? addedAt,
  }) {
    return WatchlistItemsCompanion(
      id: id ?? this.id,
      watchlistId: watchlistId ?? this.watchlistId,
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      instrumentType: instrumentType ?? this.instrumentType,
      sortOrder: sortOrder ?? this.sortOrder,
      addedAt: addedAt ?? this.addedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (watchlistId.present) {
      map['watchlist_id'] = Variable<int>(watchlistId.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (instrumentType.present) {
      map['instrument_type'] = Variable<String>(instrumentType.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (addedAt.present) {
      map['added_at'] = Variable<DateTime>(addedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WatchlistItemsCompanion(')
          ..write('id: $id, ')
          ..write('watchlistId: $watchlistId, ')
          ..write('symbol: $symbol, ')
          ..write('name: $name, ')
          ..write('instrumentType: $instrumentType, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('addedAt: $addedAt')
          ..write(')'))
        .toString();
  }
}

class $PortfolioTableTable extends PortfolioTable
    with TableInfo<$PortfolioTableTable, PortfolioTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PortfolioTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: () => 'portfolio',
  );
  static const VerificationMeta _cashBalanceMeta = const VerificationMeta(
    'cashBalance',
  );
  @override
  late final GeneratedColumn<double> cashBalance = GeneratedColumn<double>(
    'cash_balance',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalValueMeta = const VerificationMeta(
    'totalValue',
  );
  @override
  late final GeneratedColumn<double> totalValue = GeneratedColumn<double>(
    'total_value',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: Constant(0),
  );
  static const VerificationMeta _totalPnlMeta = const VerificationMeta(
    'totalPnl',
  );
  @override
  late final GeneratedColumn<double> totalPnl = GeneratedColumn<double>(
    'total_pnl',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: Constant(0),
  );
  static const VerificationMeta _dayPnlMeta = const VerificationMeta('dayPnl');
  @override
  late final GeneratedColumn<double> dayPnl = GeneratedColumn<double>(
    'day_pnl',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: Constant(0),
  );
  static const VerificationMeta _lastUpdatedMeta = const VerificationMeta(
    'lastUpdated',
  );
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
    'last_updated',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    cashBalance,
    totalValue,
    totalPnl,
    dayPnl,
    lastUpdated,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'portfolio_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<PortfolioTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('cash_balance')) {
      context.handle(
        _cashBalanceMeta,
        cashBalance.isAcceptableOrUnknown(
          data['cash_balance']!,
          _cashBalanceMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_cashBalanceMeta);
    }
    if (data.containsKey('total_value')) {
      context.handle(
        _totalValueMeta,
        totalValue.isAcceptableOrUnknown(data['total_value']!, _totalValueMeta),
      );
    }
    if (data.containsKey('total_pnl')) {
      context.handle(
        _totalPnlMeta,
        totalPnl.isAcceptableOrUnknown(data['total_pnl']!, _totalPnlMeta),
      );
    }
    if (data.containsKey('day_pnl')) {
      context.handle(
        _dayPnlMeta,
        dayPnl.isAcceptableOrUnknown(data['day_pnl']!, _dayPnlMeta),
      );
    }
    if (data.containsKey('last_updated')) {
      context.handle(
        _lastUpdatedMeta,
        lastUpdated.isAcceptableOrUnknown(
          data['last_updated']!,
          _lastUpdatedMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PortfolioTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PortfolioTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      cashBalance: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}cash_balance'],
      )!,
      totalValue: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}total_value'],
      )!,
      totalPnl: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}total_pnl'],
      )!,
      dayPnl: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}day_pnl'],
      )!,
      lastUpdated: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_updated'],
      )!,
    );
  }

  @override
  $PortfolioTableTable createAlias(String alias) {
    return $PortfolioTableTable(attachedDatabase, alias);
  }
}

class PortfolioTableData extends DataClass
    implements Insertable<PortfolioTableData> {
  final String id;
  final double cashBalance;
  final double totalValue;
  final double totalPnl;
  final double dayPnl;
  final DateTime lastUpdated;
  const PortfolioTableData({
    required this.id,
    required this.cashBalance,
    required this.totalValue,
    required this.totalPnl,
    required this.dayPnl,
    required this.lastUpdated,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['cash_balance'] = Variable<double>(cashBalance);
    map['total_value'] = Variable<double>(totalValue);
    map['total_pnl'] = Variable<double>(totalPnl);
    map['day_pnl'] = Variable<double>(dayPnl);
    map['last_updated'] = Variable<DateTime>(lastUpdated);
    return map;
  }

  PortfolioTableCompanion toCompanion(bool nullToAbsent) {
    return PortfolioTableCompanion(
      id: Value(id),
      cashBalance: Value(cashBalance),
      totalValue: Value(totalValue),
      totalPnl: Value(totalPnl),
      dayPnl: Value(dayPnl),
      lastUpdated: Value(lastUpdated),
    );
  }

  factory PortfolioTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PortfolioTableData(
      id: serializer.fromJson<String>(json['id']),
      cashBalance: serializer.fromJson<double>(json['cashBalance']),
      totalValue: serializer.fromJson<double>(json['totalValue']),
      totalPnl: serializer.fromJson<double>(json['totalPnl']),
      dayPnl: serializer.fromJson<double>(json['dayPnl']),
      lastUpdated: serializer.fromJson<DateTime>(json['lastUpdated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'cashBalance': serializer.toJson<double>(cashBalance),
      'totalValue': serializer.toJson<double>(totalValue),
      'totalPnl': serializer.toJson<double>(totalPnl),
      'dayPnl': serializer.toJson<double>(dayPnl),
      'lastUpdated': serializer.toJson<DateTime>(lastUpdated),
    };
  }

  PortfolioTableData copyWith({
    String? id,
    double? cashBalance,
    double? totalValue,
    double? totalPnl,
    double? dayPnl,
    DateTime? lastUpdated,
  }) => PortfolioTableData(
    id: id ?? this.id,
    cashBalance: cashBalance ?? this.cashBalance,
    totalValue: totalValue ?? this.totalValue,
    totalPnl: totalPnl ?? this.totalPnl,
    dayPnl: dayPnl ?? this.dayPnl,
    lastUpdated: lastUpdated ?? this.lastUpdated,
  );
  PortfolioTableData copyWithCompanion(PortfolioTableCompanion data) {
    return PortfolioTableData(
      id: data.id.present ? data.id.value : this.id,
      cashBalance: data.cashBalance.present
          ? data.cashBalance.value
          : this.cashBalance,
      totalValue: data.totalValue.present
          ? data.totalValue.value
          : this.totalValue,
      totalPnl: data.totalPnl.present ? data.totalPnl.value : this.totalPnl,
      dayPnl: data.dayPnl.present ? data.dayPnl.value : this.dayPnl,
      lastUpdated: data.lastUpdated.present
          ? data.lastUpdated.value
          : this.lastUpdated,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PortfolioTableData(')
          ..write('id: $id, ')
          ..write('cashBalance: $cashBalance, ')
          ..write('totalValue: $totalValue, ')
          ..write('totalPnl: $totalPnl, ')
          ..write('dayPnl: $dayPnl, ')
          ..write('lastUpdated: $lastUpdated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, cashBalance, totalValue, totalPnl, dayPnl, lastUpdated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PortfolioTableData &&
          other.id == this.id &&
          other.cashBalance == this.cashBalance &&
          other.totalValue == this.totalValue &&
          other.totalPnl == this.totalPnl &&
          other.dayPnl == this.dayPnl &&
          other.lastUpdated == this.lastUpdated);
}

class PortfolioTableCompanion extends UpdateCompanion<PortfolioTableData> {
  final Value<String> id;
  final Value<double> cashBalance;
  final Value<double> totalValue;
  final Value<double> totalPnl;
  final Value<double> dayPnl;
  final Value<DateTime> lastUpdated;
  final Value<int> rowid;
  const PortfolioTableCompanion({
    this.id = const Value.absent(),
    this.cashBalance = const Value.absent(),
    this.totalValue = const Value.absent(),
    this.totalPnl = const Value.absent(),
    this.dayPnl = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PortfolioTableCompanion.insert({
    this.id = const Value.absent(),
    required double cashBalance,
    this.totalValue = const Value.absent(),
    this.totalPnl = const Value.absent(),
    this.dayPnl = const Value.absent(),
    required DateTime lastUpdated,
    this.rowid = const Value.absent(),
  }) : cashBalance = Value(cashBalance),
       lastUpdated = Value(lastUpdated);
  static Insertable<PortfolioTableData> custom({
    Expression<String>? id,
    Expression<double>? cashBalance,
    Expression<double>? totalValue,
    Expression<double>? totalPnl,
    Expression<double>? dayPnl,
    Expression<DateTime>? lastUpdated,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (cashBalance != null) 'cash_balance': cashBalance,
      if (totalValue != null) 'total_value': totalValue,
      if (totalPnl != null) 'total_pnl': totalPnl,
      if (dayPnl != null) 'day_pnl': dayPnl,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PortfolioTableCompanion copyWith({
    Value<String>? id,
    Value<double>? cashBalance,
    Value<double>? totalValue,
    Value<double>? totalPnl,
    Value<double>? dayPnl,
    Value<DateTime>? lastUpdated,
    Value<int>? rowid,
  }) {
    return PortfolioTableCompanion(
      id: id ?? this.id,
      cashBalance: cashBalance ?? this.cashBalance,
      totalValue: totalValue ?? this.totalValue,
      totalPnl: totalPnl ?? this.totalPnl,
      dayPnl: dayPnl ?? this.dayPnl,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (cashBalance.present) {
      map['cash_balance'] = Variable<double>(cashBalance.value);
    }
    if (totalValue.present) {
      map['total_value'] = Variable<double>(totalValue.value);
    }
    if (totalPnl.present) {
      map['total_pnl'] = Variable<double>(totalPnl.value);
    }
    if (dayPnl.present) {
      map['day_pnl'] = Variable<double>(dayPnl.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<DateTime>(lastUpdated.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PortfolioTableCompanion(')
          ..write('id: $id, ')
          ..write('cashBalance: $cashBalance, ')
          ..write('totalValue: $totalValue, ')
          ..write('totalPnl: $totalPnl, ')
          ..write('dayPnl: $dayPnl, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TradesTable extends Trades with TableInfo<$TradesTable, Trade> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TradesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: () => Uuid().v4(),
  );
  static const VerificationMeta _orderIdMeta = const VerificationMeta(
    'orderId',
  );
  @override
  late final GeneratedColumn<String> orderId = GeneratedColumn<String>(
    'order_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
    'symbol',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sideMeta = const VerificationMeta('side');
  @override
  late final GeneratedColumn<String> side = GeneratedColumn<String>(
    'side',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
    'price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pnlMeta = const VerificationMeta('pnl');
  @override
  late final GeneratedColumn<double> pnl = GeneratedColumn<double>(
    'pnl',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _brokerageMeta = const VerificationMeta(
    'brokerage',
  );
  @override
  late final GeneratedColumn<double> brokerage = GeneratedColumn<double>(
    'brokerage',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(20),
  );
  static const VerificationMeta _gstMeta = const VerificationMeta('gst');
  @override
  late final GeneratedColumn<double> gst = GeneratedColumn<double>(
    'gst',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: Constant(3.6),
  );
  static const VerificationMeta _stampDutyMeta = const VerificationMeta(
    'stampDuty',
  );
  @override
  late final GeneratedColumn<double> stampDuty = GeneratedColumn<double>(
    'stamp_duty',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: Constant(0.01),
  );
  static const VerificationMeta _sebiFeeMeta = const VerificationMeta(
    'sebiFee',
  );
  @override
  late final GeneratedColumn<double> sebiFee = GeneratedColumn<double>(
    'sebi_fee',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: Constant(0.05),
  );
  static const VerificationMeta _totalChargesMeta = const VerificationMeta(
    'totalCharges',
  );
  @override
  late final GeneratedColumn<double> totalCharges = GeneratedColumn<double>(
    'total_charges',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: Constant(23.61),
  );
  static const VerificationMeta _executedAtMeta = const VerificationMeta(
    'executedAt',
  );
  @override
  late final GeneratedColumn<DateTime> executedAt = GeneratedColumn<DateTime>(
    'executed_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    orderId,
    symbol,
    side,
    price,
    quantity,
    value,
    pnl,
    brokerage,
    gst,
    stampDuty,
    sebiFee,
    totalCharges,
    executedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'trades';
  @override
  VerificationContext validateIntegrity(
    Insertable<Trade> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('order_id')) {
      context.handle(
        _orderIdMeta,
        orderId.isAcceptableOrUnknown(data['order_id']!, _orderIdMeta),
      );
    } else if (isInserting) {
      context.missing(_orderIdMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(
        _symbolMeta,
        symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta),
      );
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('side')) {
      context.handle(
        _sideMeta,
        side.isAcceptableOrUnknown(data['side']!, _sideMeta),
      );
    } else if (isInserting) {
      context.missing(_sideMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
        _priceMeta,
        price.isAcceptableOrUnknown(data['price']!, _priceMeta),
      );
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('pnl')) {
      context.handle(
        _pnlMeta,
        pnl.isAcceptableOrUnknown(data['pnl']!, _pnlMeta),
      );
    }
    if (data.containsKey('brokerage')) {
      context.handle(
        _brokerageMeta,
        brokerage.isAcceptableOrUnknown(data['brokerage']!, _brokerageMeta),
      );
    }
    if (data.containsKey('gst')) {
      context.handle(
        _gstMeta,
        gst.isAcceptableOrUnknown(data['gst']!, _gstMeta),
      );
    }
    if (data.containsKey('stamp_duty')) {
      context.handle(
        _stampDutyMeta,
        stampDuty.isAcceptableOrUnknown(data['stamp_duty']!, _stampDutyMeta),
      );
    }
    if (data.containsKey('sebi_fee')) {
      context.handle(
        _sebiFeeMeta,
        sebiFee.isAcceptableOrUnknown(data['sebi_fee']!, _sebiFeeMeta),
      );
    }
    if (data.containsKey('total_charges')) {
      context.handle(
        _totalChargesMeta,
        totalCharges.isAcceptableOrUnknown(
          data['total_charges']!,
          _totalChargesMeta,
        ),
      );
    }
    if (data.containsKey('executed_at')) {
      context.handle(
        _executedAtMeta,
        executedAt.isAcceptableOrUnknown(data['executed_at']!, _executedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_executedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Trade map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Trade(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      orderId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}order_id'],
      )!,
      symbol: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}symbol'],
      )!,
      side: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}side'],
      )!,
      price: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}price'],
      )!,
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quantity'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}value'],
      )!,
      pnl: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}pnl'],
      )!,
      brokerage: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}brokerage'],
      )!,
      gst: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}gst'],
      )!,
      stampDuty: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}stamp_duty'],
      )!,
      sebiFee: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}sebi_fee'],
      )!,
      totalCharges: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}total_charges'],
      )!,
      executedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}executed_at'],
      )!,
    );
  }

  @override
  $TradesTable createAlias(String alias) {
    return $TradesTable(attachedDatabase, alias);
  }
}

class Trade extends DataClass implements Insertable<Trade> {
  final String id;
  final String orderId;
  final String symbol;
  final String side;
  final double price;
  final int quantity;
  final double value;
  final double pnl;
  final double brokerage;
  final double gst;
  final double stampDuty;
  final double sebiFee;
  final double totalCharges;
  final DateTime executedAt;
  const Trade({
    required this.id,
    required this.orderId,
    required this.symbol,
    required this.side,
    required this.price,
    required this.quantity,
    required this.value,
    required this.pnl,
    required this.brokerage,
    required this.gst,
    required this.stampDuty,
    required this.sebiFee,
    required this.totalCharges,
    required this.executedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['order_id'] = Variable<String>(orderId);
    map['symbol'] = Variable<String>(symbol);
    map['side'] = Variable<String>(side);
    map['price'] = Variable<double>(price);
    map['quantity'] = Variable<int>(quantity);
    map['value'] = Variable<double>(value);
    map['pnl'] = Variable<double>(pnl);
    map['brokerage'] = Variable<double>(brokerage);
    map['gst'] = Variable<double>(gst);
    map['stamp_duty'] = Variable<double>(stampDuty);
    map['sebi_fee'] = Variable<double>(sebiFee);
    map['total_charges'] = Variable<double>(totalCharges);
    map['executed_at'] = Variable<DateTime>(executedAt);
    return map;
  }

  TradesCompanion toCompanion(bool nullToAbsent) {
    return TradesCompanion(
      id: Value(id),
      orderId: Value(orderId),
      symbol: Value(symbol),
      side: Value(side),
      price: Value(price),
      quantity: Value(quantity),
      value: Value(value),
      pnl: Value(pnl),
      brokerage: Value(brokerage),
      gst: Value(gst),
      stampDuty: Value(stampDuty),
      sebiFee: Value(sebiFee),
      totalCharges: Value(totalCharges),
      executedAt: Value(executedAt),
    );
  }

  factory Trade.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Trade(
      id: serializer.fromJson<String>(json['id']),
      orderId: serializer.fromJson<String>(json['orderId']),
      symbol: serializer.fromJson<String>(json['symbol']),
      side: serializer.fromJson<String>(json['side']),
      price: serializer.fromJson<double>(json['price']),
      quantity: serializer.fromJson<int>(json['quantity']),
      value: serializer.fromJson<double>(json['value']),
      pnl: serializer.fromJson<double>(json['pnl']),
      brokerage: serializer.fromJson<double>(json['brokerage']),
      gst: serializer.fromJson<double>(json['gst']),
      stampDuty: serializer.fromJson<double>(json['stampDuty']),
      sebiFee: serializer.fromJson<double>(json['sebiFee']),
      totalCharges: serializer.fromJson<double>(json['totalCharges']),
      executedAt: serializer.fromJson<DateTime>(json['executedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'orderId': serializer.toJson<String>(orderId),
      'symbol': serializer.toJson<String>(symbol),
      'side': serializer.toJson<String>(side),
      'price': serializer.toJson<double>(price),
      'quantity': serializer.toJson<int>(quantity),
      'value': serializer.toJson<double>(value),
      'pnl': serializer.toJson<double>(pnl),
      'brokerage': serializer.toJson<double>(brokerage),
      'gst': serializer.toJson<double>(gst),
      'stampDuty': serializer.toJson<double>(stampDuty),
      'sebiFee': serializer.toJson<double>(sebiFee),
      'totalCharges': serializer.toJson<double>(totalCharges),
      'executedAt': serializer.toJson<DateTime>(executedAt),
    };
  }

  Trade copyWith({
    String? id,
    String? orderId,
    String? symbol,
    String? side,
    double? price,
    int? quantity,
    double? value,
    double? pnl,
    double? brokerage,
    double? gst,
    double? stampDuty,
    double? sebiFee,
    double? totalCharges,
    DateTime? executedAt,
  }) => Trade(
    id: id ?? this.id,
    orderId: orderId ?? this.orderId,
    symbol: symbol ?? this.symbol,
    side: side ?? this.side,
    price: price ?? this.price,
    quantity: quantity ?? this.quantity,
    value: value ?? this.value,
    pnl: pnl ?? this.pnl,
    brokerage: brokerage ?? this.brokerage,
    gst: gst ?? this.gst,
    stampDuty: stampDuty ?? this.stampDuty,
    sebiFee: sebiFee ?? this.sebiFee,
    totalCharges: totalCharges ?? this.totalCharges,
    executedAt: executedAt ?? this.executedAt,
  );
  Trade copyWithCompanion(TradesCompanion data) {
    return Trade(
      id: data.id.present ? data.id.value : this.id,
      orderId: data.orderId.present ? data.orderId.value : this.orderId,
      symbol: data.symbol.present ? data.symbol.value : this.symbol,
      side: data.side.present ? data.side.value : this.side,
      price: data.price.present ? data.price.value : this.price,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      value: data.value.present ? data.value.value : this.value,
      pnl: data.pnl.present ? data.pnl.value : this.pnl,
      brokerage: data.brokerage.present ? data.brokerage.value : this.brokerage,
      gst: data.gst.present ? data.gst.value : this.gst,
      stampDuty: data.stampDuty.present ? data.stampDuty.value : this.stampDuty,
      sebiFee: data.sebiFee.present ? data.sebiFee.value : this.sebiFee,
      totalCharges: data.totalCharges.present
          ? data.totalCharges.value
          : this.totalCharges,
      executedAt: data.executedAt.present
          ? data.executedAt.value
          : this.executedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Trade(')
          ..write('id: $id, ')
          ..write('orderId: $orderId, ')
          ..write('symbol: $symbol, ')
          ..write('side: $side, ')
          ..write('price: $price, ')
          ..write('quantity: $quantity, ')
          ..write('value: $value, ')
          ..write('pnl: $pnl, ')
          ..write('brokerage: $brokerage, ')
          ..write('gst: $gst, ')
          ..write('stampDuty: $stampDuty, ')
          ..write('sebiFee: $sebiFee, ')
          ..write('totalCharges: $totalCharges, ')
          ..write('executedAt: $executedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    orderId,
    symbol,
    side,
    price,
    quantity,
    value,
    pnl,
    brokerage,
    gst,
    stampDuty,
    sebiFee,
    totalCharges,
    executedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Trade &&
          other.id == this.id &&
          other.orderId == this.orderId &&
          other.symbol == this.symbol &&
          other.side == this.side &&
          other.price == this.price &&
          other.quantity == this.quantity &&
          other.value == this.value &&
          other.pnl == this.pnl &&
          other.brokerage == this.brokerage &&
          other.gst == this.gst &&
          other.stampDuty == this.stampDuty &&
          other.sebiFee == this.sebiFee &&
          other.totalCharges == this.totalCharges &&
          other.executedAt == this.executedAt);
}

class TradesCompanion extends UpdateCompanion<Trade> {
  final Value<String> id;
  final Value<String> orderId;
  final Value<String> symbol;
  final Value<String> side;
  final Value<double> price;
  final Value<int> quantity;
  final Value<double> value;
  final Value<double> pnl;
  final Value<double> brokerage;
  final Value<double> gst;
  final Value<double> stampDuty;
  final Value<double> sebiFee;
  final Value<double> totalCharges;
  final Value<DateTime> executedAt;
  final Value<int> rowid;
  const TradesCompanion({
    this.id = const Value.absent(),
    this.orderId = const Value.absent(),
    this.symbol = const Value.absent(),
    this.side = const Value.absent(),
    this.price = const Value.absent(),
    this.quantity = const Value.absent(),
    this.value = const Value.absent(),
    this.pnl = const Value.absent(),
    this.brokerage = const Value.absent(),
    this.gst = const Value.absent(),
    this.stampDuty = const Value.absent(),
    this.sebiFee = const Value.absent(),
    this.totalCharges = const Value.absent(),
    this.executedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TradesCompanion.insert({
    this.id = const Value.absent(),
    required String orderId,
    required String symbol,
    required String side,
    required double price,
    required int quantity,
    required double value,
    this.pnl = const Value.absent(),
    this.brokerage = const Value.absent(),
    this.gst = const Value.absent(),
    this.stampDuty = const Value.absent(),
    this.sebiFee = const Value.absent(),
    this.totalCharges = const Value.absent(),
    required DateTime executedAt,
    this.rowid = const Value.absent(),
  }) : orderId = Value(orderId),
       symbol = Value(symbol),
       side = Value(side),
       price = Value(price),
       quantity = Value(quantity),
       value = Value(value),
       executedAt = Value(executedAt);
  static Insertable<Trade> custom({
    Expression<String>? id,
    Expression<String>? orderId,
    Expression<String>? symbol,
    Expression<String>? side,
    Expression<double>? price,
    Expression<int>? quantity,
    Expression<double>? value,
    Expression<double>? pnl,
    Expression<double>? brokerage,
    Expression<double>? gst,
    Expression<double>? stampDuty,
    Expression<double>? sebiFee,
    Expression<double>? totalCharges,
    Expression<DateTime>? executedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (orderId != null) 'order_id': orderId,
      if (symbol != null) 'symbol': symbol,
      if (side != null) 'side': side,
      if (price != null) 'price': price,
      if (quantity != null) 'quantity': quantity,
      if (value != null) 'value': value,
      if (pnl != null) 'pnl': pnl,
      if (brokerage != null) 'brokerage': brokerage,
      if (gst != null) 'gst': gst,
      if (stampDuty != null) 'stamp_duty': stampDuty,
      if (sebiFee != null) 'sebi_fee': sebiFee,
      if (totalCharges != null) 'total_charges': totalCharges,
      if (executedAt != null) 'executed_at': executedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TradesCompanion copyWith({
    Value<String>? id,
    Value<String>? orderId,
    Value<String>? symbol,
    Value<String>? side,
    Value<double>? price,
    Value<int>? quantity,
    Value<double>? value,
    Value<double>? pnl,
    Value<double>? brokerage,
    Value<double>? gst,
    Value<double>? stampDuty,
    Value<double>? sebiFee,
    Value<double>? totalCharges,
    Value<DateTime>? executedAt,
    Value<int>? rowid,
  }) {
    return TradesCompanion(
      id: id ?? this.id,
      orderId: orderId ?? this.orderId,
      symbol: symbol ?? this.symbol,
      side: side ?? this.side,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      value: value ?? this.value,
      pnl: pnl ?? this.pnl,
      brokerage: brokerage ?? this.brokerage,
      gst: gst ?? this.gst,
      stampDuty: stampDuty ?? this.stampDuty,
      sebiFee: sebiFee ?? this.sebiFee,
      totalCharges: totalCharges ?? this.totalCharges,
      executedAt: executedAt ?? this.executedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (orderId.present) {
      map['order_id'] = Variable<String>(orderId.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (side.present) {
      map['side'] = Variable<String>(side.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    if (pnl.present) {
      map['pnl'] = Variable<double>(pnl.value);
    }
    if (brokerage.present) {
      map['brokerage'] = Variable<double>(brokerage.value);
    }
    if (gst.present) {
      map['gst'] = Variable<double>(gst.value);
    }
    if (stampDuty.present) {
      map['stamp_duty'] = Variable<double>(stampDuty.value);
    }
    if (sebiFee.present) {
      map['sebi_fee'] = Variable<double>(sebiFee.value);
    }
    if (totalCharges.present) {
      map['total_charges'] = Variable<double>(totalCharges.value);
    }
    if (executedAt.present) {
      map['executed_at'] = Variable<DateTime>(executedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TradesCompanion(')
          ..write('id: $id, ')
          ..write('orderId: $orderId, ')
          ..write('symbol: $symbol, ')
          ..write('side: $side, ')
          ..write('price: $price, ')
          ..write('quantity: $quantity, ')
          ..write('value: $value, ')
          ..write('pnl: $pnl, ')
          ..write('brokerage: $brokerage, ')
          ..write('gst: $gst, ')
          ..write('stampDuty: $stampDuty, ')
          ..write('sebiFee: $sebiFee, ')
          ..write('totalCharges: $totalCharges, ')
          ..write('executedAt: $executedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AlertsTable extends Alerts with TableInfo<$AlertsTable, Alert> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AlertsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
    'symbol',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _targetValueMeta = const VerificationMeta(
    'targetValue',
  );
  @override
  late final GeneratedColumn<double> targetValue = GeneratedColumn<double>(
    'target_value',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastTriggeredAtMeta = const VerificationMeta(
    'lastTriggeredAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastTriggeredAt =
      GeneratedColumn<DateTime>(
        'last_triggered_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    symbol,
    type,
    targetValue,
    isActive,
    createdAt,
    lastTriggeredAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'alerts';
  @override
  VerificationContext validateIntegrity(
    Insertable<Alert> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('symbol')) {
      context.handle(
        _symbolMeta,
        symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta),
      );
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('target_value')) {
      context.handle(
        _targetValueMeta,
        targetValue.isAcceptableOrUnknown(
          data['target_value']!,
          _targetValueMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_targetValueMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('last_triggered_at')) {
      context.handle(
        _lastTriggeredAtMeta,
        lastTriggeredAt.isAcceptableOrUnknown(
          data['last_triggered_at']!,
          _lastTriggeredAtMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Alert map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Alert(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      symbol: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}symbol'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      targetValue: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}target_value'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      lastTriggeredAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_triggered_at'],
      ),
    );
  }

  @override
  $AlertsTable createAlias(String alias) {
    return $AlertsTable(attachedDatabase, alias);
  }
}

class Alert extends DataClass implements Insertable<Alert> {
  final int id;
  final String symbol;
  final String type;
  final double targetValue;
  final bool isActive;
  final DateTime createdAt;
  final DateTime? lastTriggeredAt;
  const Alert({
    required this.id,
    required this.symbol,
    required this.type,
    required this.targetValue,
    required this.isActive,
    required this.createdAt,
    this.lastTriggeredAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['symbol'] = Variable<String>(symbol);
    map['type'] = Variable<String>(type);
    map['target_value'] = Variable<double>(targetValue);
    map['is_active'] = Variable<bool>(isActive);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || lastTriggeredAt != null) {
      map['last_triggered_at'] = Variable<DateTime>(lastTriggeredAt);
    }
    return map;
  }

  AlertsCompanion toCompanion(bool nullToAbsent) {
    return AlertsCompanion(
      id: Value(id),
      symbol: Value(symbol),
      type: Value(type),
      targetValue: Value(targetValue),
      isActive: Value(isActive),
      createdAt: Value(createdAt),
      lastTriggeredAt: lastTriggeredAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastTriggeredAt),
    );
  }

  factory Alert.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Alert(
      id: serializer.fromJson<int>(json['id']),
      symbol: serializer.fromJson<String>(json['symbol']),
      type: serializer.fromJson<String>(json['type']),
      targetValue: serializer.fromJson<double>(json['targetValue']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      lastTriggeredAt: serializer.fromJson<DateTime?>(json['lastTriggeredAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'symbol': serializer.toJson<String>(symbol),
      'type': serializer.toJson<String>(type),
      'targetValue': serializer.toJson<double>(targetValue),
      'isActive': serializer.toJson<bool>(isActive),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'lastTriggeredAt': serializer.toJson<DateTime?>(lastTriggeredAt),
    };
  }

  Alert copyWith({
    int? id,
    String? symbol,
    String? type,
    double? targetValue,
    bool? isActive,
    DateTime? createdAt,
    Value<DateTime?> lastTriggeredAt = const Value.absent(),
  }) => Alert(
    id: id ?? this.id,
    symbol: symbol ?? this.symbol,
    type: type ?? this.type,
    targetValue: targetValue ?? this.targetValue,
    isActive: isActive ?? this.isActive,
    createdAt: createdAt ?? this.createdAt,
    lastTriggeredAt: lastTriggeredAt.present
        ? lastTriggeredAt.value
        : this.lastTriggeredAt,
  );
  Alert copyWithCompanion(AlertsCompanion data) {
    return Alert(
      id: data.id.present ? data.id.value : this.id,
      symbol: data.symbol.present ? data.symbol.value : this.symbol,
      type: data.type.present ? data.type.value : this.type,
      targetValue: data.targetValue.present
          ? data.targetValue.value
          : this.targetValue,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      lastTriggeredAt: data.lastTriggeredAt.present
          ? data.lastTriggeredAt.value
          : this.lastTriggeredAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Alert(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('type: $type, ')
          ..write('targetValue: $targetValue, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('lastTriggeredAt: $lastTriggeredAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    symbol,
    type,
    targetValue,
    isActive,
    createdAt,
    lastTriggeredAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Alert &&
          other.id == this.id &&
          other.symbol == this.symbol &&
          other.type == this.type &&
          other.targetValue == this.targetValue &&
          other.isActive == this.isActive &&
          other.createdAt == this.createdAt &&
          other.lastTriggeredAt == this.lastTriggeredAt);
}

class AlertsCompanion extends UpdateCompanion<Alert> {
  final Value<int> id;
  final Value<String> symbol;
  final Value<String> type;
  final Value<double> targetValue;
  final Value<bool> isActive;
  final Value<DateTime> createdAt;
  final Value<DateTime?> lastTriggeredAt;
  const AlertsCompanion({
    this.id = const Value.absent(),
    this.symbol = const Value.absent(),
    this.type = const Value.absent(),
    this.targetValue = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.lastTriggeredAt = const Value.absent(),
  });
  AlertsCompanion.insert({
    this.id = const Value.absent(),
    required String symbol,
    required String type,
    required double targetValue,
    this.isActive = const Value.absent(),
    required DateTime createdAt,
    this.lastTriggeredAt = const Value.absent(),
  }) : symbol = Value(symbol),
       type = Value(type),
       targetValue = Value(targetValue),
       createdAt = Value(createdAt);
  static Insertable<Alert> custom({
    Expression<int>? id,
    Expression<String>? symbol,
    Expression<String>? type,
    Expression<double>? targetValue,
    Expression<bool>? isActive,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? lastTriggeredAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (symbol != null) 'symbol': symbol,
      if (type != null) 'type': type,
      if (targetValue != null) 'target_value': targetValue,
      if (isActive != null) 'is_active': isActive,
      if (createdAt != null) 'created_at': createdAt,
      if (lastTriggeredAt != null) 'last_triggered_at': lastTriggeredAt,
    });
  }

  AlertsCompanion copyWith({
    Value<int>? id,
    Value<String>? symbol,
    Value<String>? type,
    Value<double>? targetValue,
    Value<bool>? isActive,
    Value<DateTime>? createdAt,
    Value<DateTime?>? lastTriggeredAt,
  }) {
    return AlertsCompanion(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      type: type ?? this.type,
      targetValue: targetValue ?? this.targetValue,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      lastTriggeredAt: lastTriggeredAt ?? this.lastTriggeredAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (targetValue.present) {
      map['target_value'] = Variable<double>(targetValue.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (lastTriggeredAt.present) {
      map['last_triggered_at'] = Variable<DateTime>(lastTriggeredAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AlertsCompanion(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('type: $type, ')
          ..write('targetValue: $targetValue, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('lastTriggeredAt: $lastTriggeredAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $StocksTable stocks = $StocksTable(this);
  late final $OptionTableTable optionTable = $OptionTableTable(this);
  late final $OrdersTable orders = $OrdersTable(this);
  late final $PositionsTable positions = $PositionsTable(this);
  late final $WatchlistNamesTable watchlistNames = $WatchlistNamesTable(this);
  late final $WatchlistItemsTable watchlistItems = $WatchlistItemsTable(this);
  late final $PortfolioTableTable portfolioTable = $PortfolioTableTable(this);
  late final $TradesTable trades = $TradesTable(this);
  late final $AlertsTable alerts = $AlertsTable(this);
  late final WatchlistDao watchlistDao = WatchlistDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    stocks,
    optionTable,
    orders,
    positions,
    watchlistNames,
    watchlistItems,
    portfolioTable,
    trades,
    alerts,
  ];
}

typedef $$StocksTableCreateCompanionBuilder =
    StocksCompanion Function({
      required String symbol,
      required String name,
      required String exchange,
      required double currentPrice,
      required double previousClose,
      required double dayHigh,
      required double dayLow,
      required double volume,
      required double marketCap,
      required String sector,
      required String industry,
      required double peRatio,
      required double pbRatio,
      required double dividendYield,
      required double beta,
      required double fiftyTwoWeekHigh,
      required double fiftyTwoWeekLow,
      required DateTime lastUpdated,
      Value<bool> isActive,
      Value<int> rowid,
    });
typedef $$StocksTableUpdateCompanionBuilder =
    StocksCompanion Function({
      Value<String> symbol,
      Value<String> name,
      Value<String> exchange,
      Value<double> currentPrice,
      Value<double> previousClose,
      Value<double> dayHigh,
      Value<double> dayLow,
      Value<double> volume,
      Value<double> marketCap,
      Value<String> sector,
      Value<String> industry,
      Value<double> peRatio,
      Value<double> pbRatio,
      Value<double> dividendYield,
      Value<double> beta,
      Value<double> fiftyTwoWeekHigh,
      Value<double> fiftyTwoWeekLow,
      Value<DateTime> lastUpdated,
      Value<bool> isActive,
      Value<int> rowid,
    });

class $$StocksTableFilterComposer
    extends Composer<_$AppDatabase, $StocksTable> {
  $$StocksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get exchange => $composableBuilder(
    column: $table.exchange,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get currentPrice => $composableBuilder(
    column: $table.currentPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get previousClose => $composableBuilder(
    column: $table.previousClose,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get dayHigh => $composableBuilder(
    column: $table.dayHigh,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get dayLow => $composableBuilder(
    column: $table.dayLow,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get volume => $composableBuilder(
    column: $table.volume,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get marketCap => $composableBuilder(
    column: $table.marketCap,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sector => $composableBuilder(
    column: $table.sector,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get industry => $composableBuilder(
    column: $table.industry,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get peRatio => $composableBuilder(
    column: $table.peRatio,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get pbRatio => $composableBuilder(
    column: $table.pbRatio,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get dividendYield => $composableBuilder(
    column: $table.dividendYield,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get beta => $composableBuilder(
    column: $table.beta,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get fiftyTwoWeekHigh => $composableBuilder(
    column: $table.fiftyTwoWeekHigh,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get fiftyTwoWeekLow => $composableBuilder(
    column: $table.fiftyTwoWeekLow,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastUpdated => $composableBuilder(
    column: $table.lastUpdated,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );
}

class $$StocksTableOrderingComposer
    extends Composer<_$AppDatabase, $StocksTable> {
  $$StocksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get exchange => $composableBuilder(
    column: $table.exchange,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get currentPrice => $composableBuilder(
    column: $table.currentPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get previousClose => $composableBuilder(
    column: $table.previousClose,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get dayHigh => $composableBuilder(
    column: $table.dayHigh,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get dayLow => $composableBuilder(
    column: $table.dayLow,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get volume => $composableBuilder(
    column: $table.volume,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get marketCap => $composableBuilder(
    column: $table.marketCap,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sector => $composableBuilder(
    column: $table.sector,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get industry => $composableBuilder(
    column: $table.industry,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get peRatio => $composableBuilder(
    column: $table.peRatio,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get pbRatio => $composableBuilder(
    column: $table.pbRatio,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get dividendYield => $composableBuilder(
    column: $table.dividendYield,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get beta => $composableBuilder(
    column: $table.beta,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get fiftyTwoWeekHigh => $composableBuilder(
    column: $table.fiftyTwoWeekHigh,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get fiftyTwoWeekLow => $composableBuilder(
    column: $table.fiftyTwoWeekLow,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastUpdated => $composableBuilder(
    column: $table.lastUpdated,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$StocksTableAnnotationComposer
    extends Composer<_$AppDatabase, $StocksTable> {
  $$StocksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get symbol =>
      $composableBuilder(column: $table.symbol, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get exchange =>
      $composableBuilder(column: $table.exchange, builder: (column) => column);

  GeneratedColumn<double> get currentPrice => $composableBuilder(
    column: $table.currentPrice,
    builder: (column) => column,
  );

  GeneratedColumn<double> get previousClose => $composableBuilder(
    column: $table.previousClose,
    builder: (column) => column,
  );

  GeneratedColumn<double> get dayHigh =>
      $composableBuilder(column: $table.dayHigh, builder: (column) => column);

  GeneratedColumn<double> get dayLow =>
      $composableBuilder(column: $table.dayLow, builder: (column) => column);

  GeneratedColumn<double> get volume =>
      $composableBuilder(column: $table.volume, builder: (column) => column);

  GeneratedColumn<double> get marketCap =>
      $composableBuilder(column: $table.marketCap, builder: (column) => column);

  GeneratedColumn<String> get sector =>
      $composableBuilder(column: $table.sector, builder: (column) => column);

  GeneratedColumn<String> get industry =>
      $composableBuilder(column: $table.industry, builder: (column) => column);

  GeneratedColumn<double> get peRatio =>
      $composableBuilder(column: $table.peRatio, builder: (column) => column);

  GeneratedColumn<double> get pbRatio =>
      $composableBuilder(column: $table.pbRatio, builder: (column) => column);

  GeneratedColumn<double> get dividendYield => $composableBuilder(
    column: $table.dividendYield,
    builder: (column) => column,
  );

  GeneratedColumn<double> get beta =>
      $composableBuilder(column: $table.beta, builder: (column) => column);

  GeneratedColumn<double> get fiftyTwoWeekHigh => $composableBuilder(
    column: $table.fiftyTwoWeekHigh,
    builder: (column) => column,
  );

  GeneratedColumn<double> get fiftyTwoWeekLow => $composableBuilder(
    column: $table.fiftyTwoWeekLow,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastUpdated => $composableBuilder(
    column: $table.lastUpdated,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);
}

class $$StocksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $StocksTable,
          Stock,
          $$StocksTableFilterComposer,
          $$StocksTableOrderingComposer,
          $$StocksTableAnnotationComposer,
          $$StocksTableCreateCompanionBuilder,
          $$StocksTableUpdateCompanionBuilder,
          (Stock, BaseReferences<_$AppDatabase, $StocksTable, Stock>),
          Stock,
          PrefetchHooks Function()
        > {
  $$StocksTableTableManager(_$AppDatabase db, $StocksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StocksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StocksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StocksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> symbol = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> exchange = const Value.absent(),
                Value<double> currentPrice = const Value.absent(),
                Value<double> previousClose = const Value.absent(),
                Value<double> dayHigh = const Value.absent(),
                Value<double> dayLow = const Value.absent(),
                Value<double> volume = const Value.absent(),
                Value<double> marketCap = const Value.absent(),
                Value<String> sector = const Value.absent(),
                Value<String> industry = const Value.absent(),
                Value<double> peRatio = const Value.absent(),
                Value<double> pbRatio = const Value.absent(),
                Value<double> dividendYield = const Value.absent(),
                Value<double> beta = const Value.absent(),
                Value<double> fiftyTwoWeekHigh = const Value.absent(),
                Value<double> fiftyTwoWeekLow = const Value.absent(),
                Value<DateTime> lastUpdated = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => StocksCompanion(
                symbol: symbol,
                name: name,
                exchange: exchange,
                currentPrice: currentPrice,
                previousClose: previousClose,
                dayHigh: dayHigh,
                dayLow: dayLow,
                volume: volume,
                marketCap: marketCap,
                sector: sector,
                industry: industry,
                peRatio: peRatio,
                pbRatio: pbRatio,
                dividendYield: dividendYield,
                beta: beta,
                fiftyTwoWeekHigh: fiftyTwoWeekHigh,
                fiftyTwoWeekLow: fiftyTwoWeekLow,
                lastUpdated: lastUpdated,
                isActive: isActive,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String symbol,
                required String name,
                required String exchange,
                required double currentPrice,
                required double previousClose,
                required double dayHigh,
                required double dayLow,
                required double volume,
                required double marketCap,
                required String sector,
                required String industry,
                required double peRatio,
                required double pbRatio,
                required double dividendYield,
                required double beta,
                required double fiftyTwoWeekHigh,
                required double fiftyTwoWeekLow,
                required DateTime lastUpdated,
                Value<bool> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => StocksCompanion.insert(
                symbol: symbol,
                name: name,
                exchange: exchange,
                currentPrice: currentPrice,
                previousClose: previousClose,
                dayHigh: dayHigh,
                dayLow: dayLow,
                volume: volume,
                marketCap: marketCap,
                sector: sector,
                industry: industry,
                peRatio: peRatio,
                pbRatio: pbRatio,
                dividendYield: dividendYield,
                beta: beta,
                fiftyTwoWeekHigh: fiftyTwoWeekHigh,
                fiftyTwoWeekLow: fiftyTwoWeekLow,
                lastUpdated: lastUpdated,
                isActive: isActive,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$StocksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $StocksTable,
      Stock,
      $$StocksTableFilterComposer,
      $$StocksTableOrderingComposer,
      $$StocksTableAnnotationComposer,
      $$StocksTableCreateCompanionBuilder,
      $$StocksTableUpdateCompanionBuilder,
      (Stock, BaseReferences<_$AppDatabase, $StocksTable, Stock>),
      Stock,
      PrefetchHooks Function()
    >;
typedef $$OptionTableTableCreateCompanionBuilder =
    OptionTableCompanion Function({
      required String symbol,
      required String underlyingSymbol,
      required double strikePrice,
      required String type,
      required DateTime expiryDate,
      required double currentPrice,
      required double previousClose,
      required double bidPrice,
      required double askPrice,
      required int bidQuantity,
      required int askQuantity,
      required double openInterest,
      required double volume,
      required double impliedVolatility,
      required double delta,
      required double gamma,
      required double theta,
      required double vega,
      required double rho,
      required DateTime lastUpdated,
      Value<bool> isActive,
      Value<int> rowid,
    });
typedef $$OptionTableTableUpdateCompanionBuilder =
    OptionTableCompanion Function({
      Value<String> symbol,
      Value<String> underlyingSymbol,
      Value<double> strikePrice,
      Value<String> type,
      Value<DateTime> expiryDate,
      Value<double> currentPrice,
      Value<double> previousClose,
      Value<double> bidPrice,
      Value<double> askPrice,
      Value<int> bidQuantity,
      Value<int> askQuantity,
      Value<double> openInterest,
      Value<double> volume,
      Value<double> impliedVolatility,
      Value<double> delta,
      Value<double> gamma,
      Value<double> theta,
      Value<double> vega,
      Value<double> rho,
      Value<DateTime> lastUpdated,
      Value<bool> isActive,
      Value<int> rowid,
    });

class $$OptionTableTableFilterComposer
    extends Composer<_$AppDatabase, $OptionTableTable> {
  $$OptionTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get underlyingSymbol => $composableBuilder(
    column: $table.underlyingSymbol,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get strikePrice => $composableBuilder(
    column: $table.strikePrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get expiryDate => $composableBuilder(
    column: $table.expiryDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get currentPrice => $composableBuilder(
    column: $table.currentPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get previousClose => $composableBuilder(
    column: $table.previousClose,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get bidPrice => $composableBuilder(
    column: $table.bidPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get askPrice => $composableBuilder(
    column: $table.askPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get bidQuantity => $composableBuilder(
    column: $table.bidQuantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get askQuantity => $composableBuilder(
    column: $table.askQuantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get openInterest => $composableBuilder(
    column: $table.openInterest,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get volume => $composableBuilder(
    column: $table.volume,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get impliedVolatility => $composableBuilder(
    column: $table.impliedVolatility,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get delta => $composableBuilder(
    column: $table.delta,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get gamma => $composableBuilder(
    column: $table.gamma,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get theta => $composableBuilder(
    column: $table.theta,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get vega => $composableBuilder(
    column: $table.vega,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get rho => $composableBuilder(
    column: $table.rho,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastUpdated => $composableBuilder(
    column: $table.lastUpdated,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );
}

class $$OptionTableTableOrderingComposer
    extends Composer<_$AppDatabase, $OptionTableTable> {
  $$OptionTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get underlyingSymbol => $composableBuilder(
    column: $table.underlyingSymbol,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get strikePrice => $composableBuilder(
    column: $table.strikePrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get expiryDate => $composableBuilder(
    column: $table.expiryDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get currentPrice => $composableBuilder(
    column: $table.currentPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get previousClose => $composableBuilder(
    column: $table.previousClose,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get bidPrice => $composableBuilder(
    column: $table.bidPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get askPrice => $composableBuilder(
    column: $table.askPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get bidQuantity => $composableBuilder(
    column: $table.bidQuantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get askQuantity => $composableBuilder(
    column: $table.askQuantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get openInterest => $composableBuilder(
    column: $table.openInterest,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get volume => $composableBuilder(
    column: $table.volume,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get impliedVolatility => $composableBuilder(
    column: $table.impliedVolatility,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get delta => $composableBuilder(
    column: $table.delta,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get gamma => $composableBuilder(
    column: $table.gamma,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get theta => $composableBuilder(
    column: $table.theta,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get vega => $composableBuilder(
    column: $table.vega,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get rho => $composableBuilder(
    column: $table.rho,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastUpdated => $composableBuilder(
    column: $table.lastUpdated,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$OptionTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $OptionTableTable> {
  $$OptionTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get symbol =>
      $composableBuilder(column: $table.symbol, builder: (column) => column);

  GeneratedColumn<String> get underlyingSymbol => $composableBuilder(
    column: $table.underlyingSymbol,
    builder: (column) => column,
  );

  GeneratedColumn<double> get strikePrice => $composableBuilder(
    column: $table.strikePrice,
    builder: (column) => column,
  );

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<DateTime> get expiryDate => $composableBuilder(
    column: $table.expiryDate,
    builder: (column) => column,
  );

  GeneratedColumn<double> get currentPrice => $composableBuilder(
    column: $table.currentPrice,
    builder: (column) => column,
  );

  GeneratedColumn<double> get previousClose => $composableBuilder(
    column: $table.previousClose,
    builder: (column) => column,
  );

  GeneratedColumn<double> get bidPrice =>
      $composableBuilder(column: $table.bidPrice, builder: (column) => column);

  GeneratedColumn<double> get askPrice =>
      $composableBuilder(column: $table.askPrice, builder: (column) => column);

  GeneratedColumn<int> get bidQuantity => $composableBuilder(
    column: $table.bidQuantity,
    builder: (column) => column,
  );

  GeneratedColumn<int> get askQuantity => $composableBuilder(
    column: $table.askQuantity,
    builder: (column) => column,
  );

  GeneratedColumn<double> get openInterest => $composableBuilder(
    column: $table.openInterest,
    builder: (column) => column,
  );

  GeneratedColumn<double> get volume =>
      $composableBuilder(column: $table.volume, builder: (column) => column);

  GeneratedColumn<double> get impliedVolatility => $composableBuilder(
    column: $table.impliedVolatility,
    builder: (column) => column,
  );

  GeneratedColumn<double> get delta =>
      $composableBuilder(column: $table.delta, builder: (column) => column);

  GeneratedColumn<double> get gamma =>
      $composableBuilder(column: $table.gamma, builder: (column) => column);

  GeneratedColumn<double> get theta =>
      $composableBuilder(column: $table.theta, builder: (column) => column);

  GeneratedColumn<double> get vega =>
      $composableBuilder(column: $table.vega, builder: (column) => column);

  GeneratedColumn<double> get rho =>
      $composableBuilder(column: $table.rho, builder: (column) => column);

  GeneratedColumn<DateTime> get lastUpdated => $composableBuilder(
    column: $table.lastUpdated,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);
}

class $$OptionTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $OptionTableTable,
          OptionTableData,
          $$OptionTableTableFilterComposer,
          $$OptionTableTableOrderingComposer,
          $$OptionTableTableAnnotationComposer,
          $$OptionTableTableCreateCompanionBuilder,
          $$OptionTableTableUpdateCompanionBuilder,
          (
            OptionTableData,
            BaseReferences<_$AppDatabase, $OptionTableTable, OptionTableData>,
          ),
          OptionTableData,
          PrefetchHooks Function()
        > {
  $$OptionTableTableTableManager(_$AppDatabase db, $OptionTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OptionTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OptionTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OptionTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> symbol = const Value.absent(),
                Value<String> underlyingSymbol = const Value.absent(),
                Value<double> strikePrice = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<DateTime> expiryDate = const Value.absent(),
                Value<double> currentPrice = const Value.absent(),
                Value<double> previousClose = const Value.absent(),
                Value<double> bidPrice = const Value.absent(),
                Value<double> askPrice = const Value.absent(),
                Value<int> bidQuantity = const Value.absent(),
                Value<int> askQuantity = const Value.absent(),
                Value<double> openInterest = const Value.absent(),
                Value<double> volume = const Value.absent(),
                Value<double> impliedVolatility = const Value.absent(),
                Value<double> delta = const Value.absent(),
                Value<double> gamma = const Value.absent(),
                Value<double> theta = const Value.absent(),
                Value<double> vega = const Value.absent(),
                Value<double> rho = const Value.absent(),
                Value<DateTime> lastUpdated = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => OptionTableCompanion(
                symbol: symbol,
                underlyingSymbol: underlyingSymbol,
                strikePrice: strikePrice,
                type: type,
                expiryDate: expiryDate,
                currentPrice: currentPrice,
                previousClose: previousClose,
                bidPrice: bidPrice,
                askPrice: askPrice,
                bidQuantity: bidQuantity,
                askQuantity: askQuantity,
                openInterest: openInterest,
                volume: volume,
                impliedVolatility: impliedVolatility,
                delta: delta,
                gamma: gamma,
                theta: theta,
                vega: vega,
                rho: rho,
                lastUpdated: lastUpdated,
                isActive: isActive,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String symbol,
                required String underlyingSymbol,
                required double strikePrice,
                required String type,
                required DateTime expiryDate,
                required double currentPrice,
                required double previousClose,
                required double bidPrice,
                required double askPrice,
                required int bidQuantity,
                required int askQuantity,
                required double openInterest,
                required double volume,
                required double impliedVolatility,
                required double delta,
                required double gamma,
                required double theta,
                required double vega,
                required double rho,
                required DateTime lastUpdated,
                Value<bool> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => OptionTableCompanion.insert(
                symbol: symbol,
                underlyingSymbol: underlyingSymbol,
                strikePrice: strikePrice,
                type: type,
                expiryDate: expiryDate,
                currentPrice: currentPrice,
                previousClose: previousClose,
                bidPrice: bidPrice,
                askPrice: askPrice,
                bidQuantity: bidQuantity,
                askQuantity: askQuantity,
                openInterest: openInterest,
                volume: volume,
                impliedVolatility: impliedVolatility,
                delta: delta,
                gamma: gamma,
                theta: theta,
                vega: vega,
                rho: rho,
                lastUpdated: lastUpdated,
                isActive: isActive,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$OptionTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $OptionTableTable,
      OptionTableData,
      $$OptionTableTableFilterComposer,
      $$OptionTableTableOrderingComposer,
      $$OptionTableTableAnnotationComposer,
      $$OptionTableTableCreateCompanionBuilder,
      $$OptionTableTableUpdateCompanionBuilder,
      (
        OptionTableData,
        BaseReferences<_$AppDatabase, $OptionTableTable, OptionTableData>,
      ),
      OptionTableData,
      PrefetchHooks Function()
    >;
typedef $$OrdersTableCreateCompanionBuilder =
    OrdersCompanion Function({
      Value<String> id,
      required String symbol,
      required String side,
      required String orderType,
      required String productType,
      required double price,
      required int quantity,
      Value<double> filledQuantity,
      Value<double> averagePrice,
      required String status,
      Value<double?> stopLossPrice,
      Value<double?> targetPrice,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<DateTime?> executedAt,
      Value<int> rowid,
    });
typedef $$OrdersTableUpdateCompanionBuilder =
    OrdersCompanion Function({
      Value<String> id,
      Value<String> symbol,
      Value<String> side,
      Value<String> orderType,
      Value<String> productType,
      Value<double> price,
      Value<int> quantity,
      Value<double> filledQuantity,
      Value<double> averagePrice,
      Value<String> status,
      Value<double?> stopLossPrice,
      Value<double?> targetPrice,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> executedAt,
      Value<int> rowid,
    });

class $$OrdersTableFilterComposer
    extends Composer<_$AppDatabase, $OrdersTable> {
  $$OrdersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get side => $composableBuilder(
    column: $table.side,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get orderType => $composableBuilder(
    column: $table.orderType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get productType => $composableBuilder(
    column: $table.productType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get filledQuantity => $composableBuilder(
    column: $table.filledQuantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get averagePrice => $composableBuilder(
    column: $table.averagePrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get stopLossPrice => $composableBuilder(
    column: $table.stopLossPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get targetPrice => $composableBuilder(
    column: $table.targetPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get executedAt => $composableBuilder(
    column: $table.executedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$OrdersTableOrderingComposer
    extends Composer<_$AppDatabase, $OrdersTable> {
  $$OrdersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get side => $composableBuilder(
    column: $table.side,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get orderType => $composableBuilder(
    column: $table.orderType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get productType => $composableBuilder(
    column: $table.productType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get filledQuantity => $composableBuilder(
    column: $table.filledQuantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get averagePrice => $composableBuilder(
    column: $table.averagePrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get stopLossPrice => $composableBuilder(
    column: $table.stopLossPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get targetPrice => $composableBuilder(
    column: $table.targetPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get executedAt => $composableBuilder(
    column: $table.executedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$OrdersTableAnnotationComposer
    extends Composer<_$AppDatabase, $OrdersTable> {
  $$OrdersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get symbol =>
      $composableBuilder(column: $table.symbol, builder: (column) => column);

  GeneratedColumn<String> get side =>
      $composableBuilder(column: $table.side, builder: (column) => column);

  GeneratedColumn<String> get orderType =>
      $composableBuilder(column: $table.orderType, builder: (column) => column);

  GeneratedColumn<String> get productType => $composableBuilder(
    column: $table.productType,
    builder: (column) => column,
  );

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<int> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<double> get filledQuantity => $composableBuilder(
    column: $table.filledQuantity,
    builder: (column) => column,
  );

  GeneratedColumn<double> get averagePrice => $composableBuilder(
    column: $table.averagePrice,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<double> get stopLossPrice => $composableBuilder(
    column: $table.stopLossPrice,
    builder: (column) => column,
  );

  GeneratedColumn<double> get targetPrice => $composableBuilder(
    column: $table.targetPrice,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get executedAt => $composableBuilder(
    column: $table.executedAt,
    builder: (column) => column,
  );
}

class $$OrdersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $OrdersTable,
          Order,
          $$OrdersTableFilterComposer,
          $$OrdersTableOrderingComposer,
          $$OrdersTableAnnotationComposer,
          $$OrdersTableCreateCompanionBuilder,
          $$OrdersTableUpdateCompanionBuilder,
          (Order, BaseReferences<_$AppDatabase, $OrdersTable, Order>),
          Order,
          PrefetchHooks Function()
        > {
  $$OrdersTableTableManager(_$AppDatabase db, $OrdersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OrdersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OrdersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OrdersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> symbol = const Value.absent(),
                Value<String> side = const Value.absent(),
                Value<String> orderType = const Value.absent(),
                Value<String> productType = const Value.absent(),
                Value<double> price = const Value.absent(),
                Value<int> quantity = const Value.absent(),
                Value<double> filledQuantity = const Value.absent(),
                Value<double> averagePrice = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<double?> stopLossPrice = const Value.absent(),
                Value<double?> targetPrice = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> executedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => OrdersCompanion(
                id: id,
                symbol: symbol,
                side: side,
                orderType: orderType,
                productType: productType,
                price: price,
                quantity: quantity,
                filledQuantity: filledQuantity,
                averagePrice: averagePrice,
                status: status,
                stopLossPrice: stopLossPrice,
                targetPrice: targetPrice,
                createdAt: createdAt,
                updatedAt: updatedAt,
                executedAt: executedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                required String symbol,
                required String side,
                required String orderType,
                required String productType,
                required double price,
                required int quantity,
                Value<double> filledQuantity = const Value.absent(),
                Value<double> averagePrice = const Value.absent(),
                required String status,
                Value<double?> stopLossPrice = const Value.absent(),
                Value<double?> targetPrice = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<DateTime?> executedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => OrdersCompanion.insert(
                id: id,
                symbol: symbol,
                side: side,
                orderType: orderType,
                productType: productType,
                price: price,
                quantity: quantity,
                filledQuantity: filledQuantity,
                averagePrice: averagePrice,
                status: status,
                stopLossPrice: stopLossPrice,
                targetPrice: targetPrice,
                createdAt: createdAt,
                updatedAt: updatedAt,
                executedAt: executedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$OrdersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $OrdersTable,
      Order,
      $$OrdersTableFilterComposer,
      $$OrdersTableOrderingComposer,
      $$OrdersTableAnnotationComposer,
      $$OrdersTableCreateCompanionBuilder,
      $$OrdersTableUpdateCompanionBuilder,
      (Order, BaseReferences<_$AppDatabase, $OrdersTable, Order>),
      Order,
      PrefetchHooks Function()
    >;
typedef $$PositionsTableCreateCompanionBuilder =
    PositionsCompanion Function({
      Value<String> id,
      required String symbol,
      Value<String> name,
      required String type,
      required double entryPrice,
      Value<double> currentPrice,
      required int quantity,
      Value<double> pnl,
      Value<double> pnlPercentage,
      Value<double> dayPnl,
      Value<double> dayPnlPercentage,
      required DateTime openedAt,
      Value<DateTime?> closedAt,
      Value<bool> isActive,
      Value<double> brokerage,
      Value<int> rowid,
    });
typedef $$PositionsTableUpdateCompanionBuilder =
    PositionsCompanion Function({
      Value<String> id,
      Value<String> symbol,
      Value<String> name,
      Value<String> type,
      Value<double> entryPrice,
      Value<double> currentPrice,
      Value<int> quantity,
      Value<double> pnl,
      Value<double> pnlPercentage,
      Value<double> dayPnl,
      Value<double> dayPnlPercentage,
      Value<DateTime> openedAt,
      Value<DateTime?> closedAt,
      Value<bool> isActive,
      Value<double> brokerage,
      Value<int> rowid,
    });

class $$PositionsTableFilterComposer
    extends Composer<_$AppDatabase, $PositionsTable> {
  $$PositionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get entryPrice => $composableBuilder(
    column: $table.entryPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get currentPrice => $composableBuilder(
    column: $table.currentPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get pnl => $composableBuilder(
    column: $table.pnl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get pnlPercentage => $composableBuilder(
    column: $table.pnlPercentage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get dayPnl => $composableBuilder(
    column: $table.dayPnl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get dayPnlPercentage => $composableBuilder(
    column: $table.dayPnlPercentage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get openedAt => $composableBuilder(
    column: $table.openedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get closedAt => $composableBuilder(
    column: $table.closedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get brokerage => $composableBuilder(
    column: $table.brokerage,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PositionsTableOrderingComposer
    extends Composer<_$AppDatabase, $PositionsTable> {
  $$PositionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get entryPrice => $composableBuilder(
    column: $table.entryPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get currentPrice => $composableBuilder(
    column: $table.currentPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get pnl => $composableBuilder(
    column: $table.pnl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get pnlPercentage => $composableBuilder(
    column: $table.pnlPercentage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get dayPnl => $composableBuilder(
    column: $table.dayPnl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get dayPnlPercentage => $composableBuilder(
    column: $table.dayPnlPercentage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get openedAt => $composableBuilder(
    column: $table.openedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get closedAt => $composableBuilder(
    column: $table.closedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get brokerage => $composableBuilder(
    column: $table.brokerage,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PositionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PositionsTable> {
  $$PositionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get symbol =>
      $composableBuilder(column: $table.symbol, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<double> get entryPrice => $composableBuilder(
    column: $table.entryPrice,
    builder: (column) => column,
  );

  GeneratedColumn<double> get currentPrice => $composableBuilder(
    column: $table.currentPrice,
    builder: (column) => column,
  );

  GeneratedColumn<int> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<double> get pnl =>
      $composableBuilder(column: $table.pnl, builder: (column) => column);

  GeneratedColumn<double> get pnlPercentage => $composableBuilder(
    column: $table.pnlPercentage,
    builder: (column) => column,
  );

  GeneratedColumn<double> get dayPnl =>
      $composableBuilder(column: $table.dayPnl, builder: (column) => column);

  GeneratedColumn<double> get dayPnlPercentage => $composableBuilder(
    column: $table.dayPnlPercentage,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get openedAt =>
      $composableBuilder(column: $table.openedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get closedAt =>
      $composableBuilder(column: $table.closedAt, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<double> get brokerage =>
      $composableBuilder(column: $table.brokerage, builder: (column) => column);
}

class $$PositionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PositionsTable,
          Position,
          $$PositionsTableFilterComposer,
          $$PositionsTableOrderingComposer,
          $$PositionsTableAnnotationComposer,
          $$PositionsTableCreateCompanionBuilder,
          $$PositionsTableUpdateCompanionBuilder,
          (Position, BaseReferences<_$AppDatabase, $PositionsTable, Position>),
          Position,
          PrefetchHooks Function()
        > {
  $$PositionsTableTableManager(_$AppDatabase db, $PositionsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PositionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PositionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PositionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> symbol = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<double> entryPrice = const Value.absent(),
                Value<double> currentPrice = const Value.absent(),
                Value<int> quantity = const Value.absent(),
                Value<double> pnl = const Value.absent(),
                Value<double> pnlPercentage = const Value.absent(),
                Value<double> dayPnl = const Value.absent(),
                Value<double> dayPnlPercentage = const Value.absent(),
                Value<DateTime> openedAt = const Value.absent(),
                Value<DateTime?> closedAt = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<double> brokerage = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PositionsCompanion(
                id: id,
                symbol: symbol,
                name: name,
                type: type,
                entryPrice: entryPrice,
                currentPrice: currentPrice,
                quantity: quantity,
                pnl: pnl,
                pnlPercentage: pnlPercentage,
                dayPnl: dayPnl,
                dayPnlPercentage: dayPnlPercentage,
                openedAt: openedAt,
                closedAt: closedAt,
                isActive: isActive,
                brokerage: brokerage,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                required String symbol,
                Value<String> name = const Value.absent(),
                required String type,
                required double entryPrice,
                Value<double> currentPrice = const Value.absent(),
                required int quantity,
                Value<double> pnl = const Value.absent(),
                Value<double> pnlPercentage = const Value.absent(),
                Value<double> dayPnl = const Value.absent(),
                Value<double> dayPnlPercentage = const Value.absent(),
                required DateTime openedAt,
                Value<DateTime?> closedAt = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<double> brokerage = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PositionsCompanion.insert(
                id: id,
                symbol: symbol,
                name: name,
                type: type,
                entryPrice: entryPrice,
                currentPrice: currentPrice,
                quantity: quantity,
                pnl: pnl,
                pnlPercentage: pnlPercentage,
                dayPnl: dayPnl,
                dayPnlPercentage: dayPnlPercentage,
                openedAt: openedAt,
                closedAt: closedAt,
                isActive: isActive,
                brokerage: brokerage,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PositionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PositionsTable,
      Position,
      $$PositionsTableFilterComposer,
      $$PositionsTableOrderingComposer,
      $$PositionsTableAnnotationComposer,
      $$PositionsTableCreateCompanionBuilder,
      $$PositionsTableUpdateCompanionBuilder,
      (Position, BaseReferences<_$AppDatabase, $PositionsTable, Position>),
      Position,
      PrefetchHooks Function()
    >;
typedef $$WatchlistNamesTableCreateCompanionBuilder =
    WatchlistNamesCompanion Function({
      Value<int> id,
      required String name,
      Value<int> position,
    });
typedef $$WatchlistNamesTableUpdateCompanionBuilder =
    WatchlistNamesCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<int> position,
    });

final class $$WatchlistNamesTableReferences
    extends BaseReferences<_$AppDatabase, $WatchlistNamesTable, WatchlistName> {
  $$WatchlistNamesTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$WatchlistItemsTable, List<WatchlistItem>>
  _watchlistItemsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.watchlistItems,
    aliasName: $_aliasNameGenerator(
      db.watchlistNames.id,
      db.watchlistItems.watchlistId,
    ),
  );

  $$WatchlistItemsTableProcessedTableManager get watchlistItemsRefs {
    final manager = $$WatchlistItemsTableTableManager(
      $_db,
      $_db.watchlistItems,
    ).filter((f) => f.watchlistId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_watchlistItemsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$WatchlistNamesTableFilterComposer
    extends Composer<_$AppDatabase, $WatchlistNamesTable> {
  $$WatchlistNamesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get position => $composableBuilder(
    column: $table.position,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> watchlistItemsRefs(
    Expression<bool> Function($$WatchlistItemsTableFilterComposer f) f,
  ) {
    final $$WatchlistItemsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.watchlistItems,
      getReferencedColumn: (t) => t.watchlistId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WatchlistItemsTableFilterComposer(
            $db: $db,
            $table: $db.watchlistItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$WatchlistNamesTableOrderingComposer
    extends Composer<_$AppDatabase, $WatchlistNamesTable> {
  $$WatchlistNamesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get position => $composableBuilder(
    column: $table.position,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$WatchlistNamesTableAnnotationComposer
    extends Composer<_$AppDatabase, $WatchlistNamesTable> {
  $$WatchlistNamesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get position =>
      $composableBuilder(column: $table.position, builder: (column) => column);

  Expression<T> watchlistItemsRefs<T extends Object>(
    Expression<T> Function($$WatchlistItemsTableAnnotationComposer a) f,
  ) {
    final $$WatchlistItemsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.watchlistItems,
      getReferencedColumn: (t) => t.watchlistId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WatchlistItemsTableAnnotationComposer(
            $db: $db,
            $table: $db.watchlistItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$WatchlistNamesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $WatchlistNamesTable,
          WatchlistName,
          $$WatchlistNamesTableFilterComposer,
          $$WatchlistNamesTableOrderingComposer,
          $$WatchlistNamesTableAnnotationComposer,
          $$WatchlistNamesTableCreateCompanionBuilder,
          $$WatchlistNamesTableUpdateCompanionBuilder,
          (WatchlistName, $$WatchlistNamesTableReferences),
          WatchlistName,
          PrefetchHooks Function({bool watchlistItemsRefs})
        > {
  $$WatchlistNamesTableTableManager(
    _$AppDatabase db,
    $WatchlistNamesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WatchlistNamesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WatchlistNamesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WatchlistNamesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int> position = const Value.absent(),
              }) => WatchlistNamesCompanion(
                id: id,
                name: name,
                position: position,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                Value<int> position = const Value.absent(),
              }) => WatchlistNamesCompanion.insert(
                id: id,
                name: name,
                position: position,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$WatchlistNamesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({watchlistItemsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (watchlistItemsRefs) db.watchlistItems,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (watchlistItemsRefs)
                    await $_getPrefetchedData<
                      WatchlistName,
                      $WatchlistNamesTable,
                      WatchlistItem
                    >(
                      currentTable: table,
                      referencedTable: $$WatchlistNamesTableReferences
                          ._watchlistItemsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$WatchlistNamesTableReferences(
                            db,
                            table,
                            p0,
                          ).watchlistItemsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where(
                            (e) => e.watchlistId == item.id,
                          ),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$WatchlistNamesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $WatchlistNamesTable,
      WatchlistName,
      $$WatchlistNamesTableFilterComposer,
      $$WatchlistNamesTableOrderingComposer,
      $$WatchlistNamesTableAnnotationComposer,
      $$WatchlistNamesTableCreateCompanionBuilder,
      $$WatchlistNamesTableUpdateCompanionBuilder,
      (WatchlistName, $$WatchlistNamesTableReferences),
      WatchlistName,
      PrefetchHooks Function({bool watchlistItemsRefs})
    >;
typedef $$WatchlistItemsTableCreateCompanionBuilder =
    WatchlistItemsCompanion Function({
      Value<int> id,
      required int watchlistId,
      required String symbol,
      required String name,
      Value<String> instrumentType,
      Value<int> sortOrder,
      required DateTime addedAt,
    });
typedef $$WatchlistItemsTableUpdateCompanionBuilder =
    WatchlistItemsCompanion Function({
      Value<int> id,
      Value<int> watchlistId,
      Value<String> symbol,
      Value<String> name,
      Value<String> instrumentType,
      Value<int> sortOrder,
      Value<DateTime> addedAt,
    });

final class $$WatchlistItemsTableReferences
    extends BaseReferences<_$AppDatabase, $WatchlistItemsTable, WatchlistItem> {
  $$WatchlistItemsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $WatchlistNamesTable _watchlistIdTable(_$AppDatabase db) =>
      db.watchlistNames.createAlias(
        $_aliasNameGenerator(
          db.watchlistItems.watchlistId,
          db.watchlistNames.id,
        ),
      );

  $$WatchlistNamesTableProcessedTableManager get watchlistId {
    final $_column = $_itemColumn<int>('watchlist_id')!;

    final manager = $$WatchlistNamesTableTableManager(
      $_db,
      $_db.watchlistNames,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_watchlistIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$WatchlistItemsTableFilterComposer
    extends Composer<_$AppDatabase, $WatchlistItemsTable> {
  $$WatchlistItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get instrumentType => $composableBuilder(
    column: $table.instrumentType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get addedAt => $composableBuilder(
    column: $table.addedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$WatchlistNamesTableFilterComposer get watchlistId {
    final $$WatchlistNamesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.watchlistId,
      referencedTable: $db.watchlistNames,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WatchlistNamesTableFilterComposer(
            $db: $db,
            $table: $db.watchlistNames,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$WatchlistItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $WatchlistItemsTable> {
  $$WatchlistItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get instrumentType => $composableBuilder(
    column: $table.instrumentType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get addedAt => $composableBuilder(
    column: $table.addedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$WatchlistNamesTableOrderingComposer get watchlistId {
    final $$WatchlistNamesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.watchlistId,
      referencedTable: $db.watchlistNames,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WatchlistNamesTableOrderingComposer(
            $db: $db,
            $table: $db.watchlistNames,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$WatchlistItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $WatchlistItemsTable> {
  $$WatchlistItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get symbol =>
      $composableBuilder(column: $table.symbol, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get instrumentType => $composableBuilder(
    column: $table.instrumentType,
    builder: (column) => column,
  );

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  GeneratedColumn<DateTime> get addedAt =>
      $composableBuilder(column: $table.addedAt, builder: (column) => column);

  $$WatchlistNamesTableAnnotationComposer get watchlistId {
    final $$WatchlistNamesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.watchlistId,
      referencedTable: $db.watchlistNames,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WatchlistNamesTableAnnotationComposer(
            $db: $db,
            $table: $db.watchlistNames,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$WatchlistItemsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $WatchlistItemsTable,
          WatchlistItem,
          $$WatchlistItemsTableFilterComposer,
          $$WatchlistItemsTableOrderingComposer,
          $$WatchlistItemsTableAnnotationComposer,
          $$WatchlistItemsTableCreateCompanionBuilder,
          $$WatchlistItemsTableUpdateCompanionBuilder,
          (WatchlistItem, $$WatchlistItemsTableReferences),
          WatchlistItem,
          PrefetchHooks Function({bool watchlistId})
        > {
  $$WatchlistItemsTableTableManager(
    _$AppDatabase db,
    $WatchlistItemsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WatchlistItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WatchlistItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WatchlistItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> watchlistId = const Value.absent(),
                Value<String> symbol = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> instrumentType = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<DateTime> addedAt = const Value.absent(),
              }) => WatchlistItemsCompanion(
                id: id,
                watchlistId: watchlistId,
                symbol: symbol,
                name: name,
                instrumentType: instrumentType,
                sortOrder: sortOrder,
                addedAt: addedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int watchlistId,
                required String symbol,
                required String name,
                Value<String> instrumentType = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                required DateTime addedAt,
              }) => WatchlistItemsCompanion.insert(
                id: id,
                watchlistId: watchlistId,
                symbol: symbol,
                name: name,
                instrumentType: instrumentType,
                sortOrder: sortOrder,
                addedAt: addedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$WatchlistItemsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({watchlistId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (watchlistId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.watchlistId,
                                referencedTable: $$WatchlistItemsTableReferences
                                    ._watchlistIdTable(db),
                                referencedColumn:
                                    $$WatchlistItemsTableReferences
                                        ._watchlistIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$WatchlistItemsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $WatchlistItemsTable,
      WatchlistItem,
      $$WatchlistItemsTableFilterComposer,
      $$WatchlistItemsTableOrderingComposer,
      $$WatchlistItemsTableAnnotationComposer,
      $$WatchlistItemsTableCreateCompanionBuilder,
      $$WatchlistItemsTableUpdateCompanionBuilder,
      (WatchlistItem, $$WatchlistItemsTableReferences),
      WatchlistItem,
      PrefetchHooks Function({bool watchlistId})
    >;
typedef $$PortfolioTableTableCreateCompanionBuilder =
    PortfolioTableCompanion Function({
      Value<String> id,
      required double cashBalance,
      Value<double> totalValue,
      Value<double> totalPnl,
      Value<double> dayPnl,
      required DateTime lastUpdated,
      Value<int> rowid,
    });
typedef $$PortfolioTableTableUpdateCompanionBuilder =
    PortfolioTableCompanion Function({
      Value<String> id,
      Value<double> cashBalance,
      Value<double> totalValue,
      Value<double> totalPnl,
      Value<double> dayPnl,
      Value<DateTime> lastUpdated,
      Value<int> rowid,
    });

class $$PortfolioTableTableFilterComposer
    extends Composer<_$AppDatabase, $PortfolioTableTable> {
  $$PortfolioTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get cashBalance => $composableBuilder(
    column: $table.cashBalance,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get totalValue => $composableBuilder(
    column: $table.totalValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get totalPnl => $composableBuilder(
    column: $table.totalPnl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get dayPnl => $composableBuilder(
    column: $table.dayPnl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastUpdated => $composableBuilder(
    column: $table.lastUpdated,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PortfolioTableTableOrderingComposer
    extends Composer<_$AppDatabase, $PortfolioTableTable> {
  $$PortfolioTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get cashBalance => $composableBuilder(
    column: $table.cashBalance,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get totalValue => $composableBuilder(
    column: $table.totalValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get totalPnl => $composableBuilder(
    column: $table.totalPnl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get dayPnl => $composableBuilder(
    column: $table.dayPnl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastUpdated => $composableBuilder(
    column: $table.lastUpdated,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PortfolioTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $PortfolioTableTable> {
  $$PortfolioTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get cashBalance => $composableBuilder(
    column: $table.cashBalance,
    builder: (column) => column,
  );

  GeneratedColumn<double> get totalValue => $composableBuilder(
    column: $table.totalValue,
    builder: (column) => column,
  );

  GeneratedColumn<double> get totalPnl =>
      $composableBuilder(column: $table.totalPnl, builder: (column) => column);

  GeneratedColumn<double> get dayPnl =>
      $composableBuilder(column: $table.dayPnl, builder: (column) => column);

  GeneratedColumn<DateTime> get lastUpdated => $composableBuilder(
    column: $table.lastUpdated,
    builder: (column) => column,
  );
}

class $$PortfolioTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PortfolioTableTable,
          PortfolioTableData,
          $$PortfolioTableTableFilterComposer,
          $$PortfolioTableTableOrderingComposer,
          $$PortfolioTableTableAnnotationComposer,
          $$PortfolioTableTableCreateCompanionBuilder,
          $$PortfolioTableTableUpdateCompanionBuilder,
          (
            PortfolioTableData,
            BaseReferences<
              _$AppDatabase,
              $PortfolioTableTable,
              PortfolioTableData
            >,
          ),
          PortfolioTableData,
          PrefetchHooks Function()
        > {
  $$PortfolioTableTableTableManager(
    _$AppDatabase db,
    $PortfolioTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PortfolioTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PortfolioTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PortfolioTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<double> cashBalance = const Value.absent(),
                Value<double> totalValue = const Value.absent(),
                Value<double> totalPnl = const Value.absent(),
                Value<double> dayPnl = const Value.absent(),
                Value<DateTime> lastUpdated = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PortfolioTableCompanion(
                id: id,
                cashBalance: cashBalance,
                totalValue: totalValue,
                totalPnl: totalPnl,
                dayPnl: dayPnl,
                lastUpdated: lastUpdated,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                required double cashBalance,
                Value<double> totalValue = const Value.absent(),
                Value<double> totalPnl = const Value.absent(),
                Value<double> dayPnl = const Value.absent(),
                required DateTime lastUpdated,
                Value<int> rowid = const Value.absent(),
              }) => PortfolioTableCompanion.insert(
                id: id,
                cashBalance: cashBalance,
                totalValue: totalValue,
                totalPnl: totalPnl,
                dayPnl: dayPnl,
                lastUpdated: lastUpdated,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PortfolioTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PortfolioTableTable,
      PortfolioTableData,
      $$PortfolioTableTableFilterComposer,
      $$PortfolioTableTableOrderingComposer,
      $$PortfolioTableTableAnnotationComposer,
      $$PortfolioTableTableCreateCompanionBuilder,
      $$PortfolioTableTableUpdateCompanionBuilder,
      (
        PortfolioTableData,
        BaseReferences<_$AppDatabase, $PortfolioTableTable, PortfolioTableData>,
      ),
      PortfolioTableData,
      PrefetchHooks Function()
    >;
typedef $$TradesTableCreateCompanionBuilder =
    TradesCompanion Function({
      Value<String> id,
      required String orderId,
      required String symbol,
      required String side,
      required double price,
      required int quantity,
      required double value,
      Value<double> pnl,
      Value<double> brokerage,
      Value<double> gst,
      Value<double> stampDuty,
      Value<double> sebiFee,
      Value<double> totalCharges,
      required DateTime executedAt,
      Value<int> rowid,
    });
typedef $$TradesTableUpdateCompanionBuilder =
    TradesCompanion Function({
      Value<String> id,
      Value<String> orderId,
      Value<String> symbol,
      Value<String> side,
      Value<double> price,
      Value<int> quantity,
      Value<double> value,
      Value<double> pnl,
      Value<double> brokerage,
      Value<double> gst,
      Value<double> stampDuty,
      Value<double> sebiFee,
      Value<double> totalCharges,
      Value<DateTime> executedAt,
      Value<int> rowid,
    });

class $$TradesTableFilterComposer
    extends Composer<_$AppDatabase, $TradesTable> {
  $$TradesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get orderId => $composableBuilder(
    column: $table.orderId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get side => $composableBuilder(
    column: $table.side,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get pnl => $composableBuilder(
    column: $table.pnl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get brokerage => $composableBuilder(
    column: $table.brokerage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get gst => $composableBuilder(
    column: $table.gst,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get stampDuty => $composableBuilder(
    column: $table.stampDuty,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get sebiFee => $composableBuilder(
    column: $table.sebiFee,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get totalCharges => $composableBuilder(
    column: $table.totalCharges,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get executedAt => $composableBuilder(
    column: $table.executedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TradesTableOrderingComposer
    extends Composer<_$AppDatabase, $TradesTable> {
  $$TradesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get orderId => $composableBuilder(
    column: $table.orderId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get side => $composableBuilder(
    column: $table.side,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get pnl => $composableBuilder(
    column: $table.pnl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get brokerage => $composableBuilder(
    column: $table.brokerage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get gst => $composableBuilder(
    column: $table.gst,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get stampDuty => $composableBuilder(
    column: $table.stampDuty,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get sebiFee => $composableBuilder(
    column: $table.sebiFee,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get totalCharges => $composableBuilder(
    column: $table.totalCharges,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get executedAt => $composableBuilder(
    column: $table.executedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TradesTableAnnotationComposer
    extends Composer<_$AppDatabase, $TradesTable> {
  $$TradesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get orderId =>
      $composableBuilder(column: $table.orderId, builder: (column) => column);

  GeneratedColumn<String> get symbol =>
      $composableBuilder(column: $table.symbol, builder: (column) => column);

  GeneratedColumn<String> get side =>
      $composableBuilder(column: $table.side, builder: (column) => column);

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<int> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<double> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  GeneratedColumn<double> get pnl =>
      $composableBuilder(column: $table.pnl, builder: (column) => column);

  GeneratedColumn<double> get brokerage =>
      $composableBuilder(column: $table.brokerage, builder: (column) => column);

  GeneratedColumn<double> get gst =>
      $composableBuilder(column: $table.gst, builder: (column) => column);

  GeneratedColumn<double> get stampDuty =>
      $composableBuilder(column: $table.stampDuty, builder: (column) => column);

  GeneratedColumn<double> get sebiFee =>
      $composableBuilder(column: $table.sebiFee, builder: (column) => column);

  GeneratedColumn<double> get totalCharges => $composableBuilder(
    column: $table.totalCharges,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get executedAt => $composableBuilder(
    column: $table.executedAt,
    builder: (column) => column,
  );
}

class $$TradesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TradesTable,
          Trade,
          $$TradesTableFilterComposer,
          $$TradesTableOrderingComposer,
          $$TradesTableAnnotationComposer,
          $$TradesTableCreateCompanionBuilder,
          $$TradesTableUpdateCompanionBuilder,
          (Trade, BaseReferences<_$AppDatabase, $TradesTable, Trade>),
          Trade,
          PrefetchHooks Function()
        > {
  $$TradesTableTableManager(_$AppDatabase db, $TradesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TradesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TradesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TradesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> orderId = const Value.absent(),
                Value<String> symbol = const Value.absent(),
                Value<String> side = const Value.absent(),
                Value<double> price = const Value.absent(),
                Value<int> quantity = const Value.absent(),
                Value<double> value = const Value.absent(),
                Value<double> pnl = const Value.absent(),
                Value<double> brokerage = const Value.absent(),
                Value<double> gst = const Value.absent(),
                Value<double> stampDuty = const Value.absent(),
                Value<double> sebiFee = const Value.absent(),
                Value<double> totalCharges = const Value.absent(),
                Value<DateTime> executedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TradesCompanion(
                id: id,
                orderId: orderId,
                symbol: symbol,
                side: side,
                price: price,
                quantity: quantity,
                value: value,
                pnl: pnl,
                brokerage: brokerage,
                gst: gst,
                stampDuty: stampDuty,
                sebiFee: sebiFee,
                totalCharges: totalCharges,
                executedAt: executedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                required String orderId,
                required String symbol,
                required String side,
                required double price,
                required int quantity,
                required double value,
                Value<double> pnl = const Value.absent(),
                Value<double> brokerage = const Value.absent(),
                Value<double> gst = const Value.absent(),
                Value<double> stampDuty = const Value.absent(),
                Value<double> sebiFee = const Value.absent(),
                Value<double> totalCharges = const Value.absent(),
                required DateTime executedAt,
                Value<int> rowid = const Value.absent(),
              }) => TradesCompanion.insert(
                id: id,
                orderId: orderId,
                symbol: symbol,
                side: side,
                price: price,
                quantity: quantity,
                value: value,
                pnl: pnl,
                brokerage: brokerage,
                gst: gst,
                stampDuty: stampDuty,
                sebiFee: sebiFee,
                totalCharges: totalCharges,
                executedAt: executedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TradesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TradesTable,
      Trade,
      $$TradesTableFilterComposer,
      $$TradesTableOrderingComposer,
      $$TradesTableAnnotationComposer,
      $$TradesTableCreateCompanionBuilder,
      $$TradesTableUpdateCompanionBuilder,
      (Trade, BaseReferences<_$AppDatabase, $TradesTable, Trade>),
      Trade,
      PrefetchHooks Function()
    >;
typedef $$AlertsTableCreateCompanionBuilder =
    AlertsCompanion Function({
      Value<int> id,
      required String symbol,
      required String type,
      required double targetValue,
      Value<bool> isActive,
      required DateTime createdAt,
      Value<DateTime?> lastTriggeredAt,
    });
typedef $$AlertsTableUpdateCompanionBuilder =
    AlertsCompanion Function({
      Value<int> id,
      Value<String> symbol,
      Value<String> type,
      Value<double> targetValue,
      Value<bool> isActive,
      Value<DateTime> createdAt,
      Value<DateTime?> lastTriggeredAt,
    });

class $$AlertsTableFilterComposer
    extends Composer<_$AppDatabase, $AlertsTable> {
  $$AlertsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get targetValue => $composableBuilder(
    column: $table.targetValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastTriggeredAt => $composableBuilder(
    column: $table.lastTriggeredAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AlertsTableOrderingComposer
    extends Composer<_$AppDatabase, $AlertsTable> {
  $$AlertsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get targetValue => $composableBuilder(
    column: $table.targetValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastTriggeredAt => $composableBuilder(
    column: $table.lastTriggeredAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AlertsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AlertsTable> {
  $$AlertsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get symbol =>
      $composableBuilder(column: $table.symbol, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<double> get targetValue => $composableBuilder(
    column: $table.targetValue,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get lastTriggeredAt => $composableBuilder(
    column: $table.lastTriggeredAt,
    builder: (column) => column,
  );
}

class $$AlertsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AlertsTable,
          Alert,
          $$AlertsTableFilterComposer,
          $$AlertsTableOrderingComposer,
          $$AlertsTableAnnotationComposer,
          $$AlertsTableCreateCompanionBuilder,
          $$AlertsTableUpdateCompanionBuilder,
          (Alert, BaseReferences<_$AppDatabase, $AlertsTable, Alert>),
          Alert,
          PrefetchHooks Function()
        > {
  $$AlertsTableTableManager(_$AppDatabase db, $AlertsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AlertsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AlertsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AlertsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> symbol = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<double> targetValue = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> lastTriggeredAt = const Value.absent(),
              }) => AlertsCompanion(
                id: id,
                symbol: symbol,
                type: type,
                targetValue: targetValue,
                isActive: isActive,
                createdAt: createdAt,
                lastTriggeredAt: lastTriggeredAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String symbol,
                required String type,
                required double targetValue,
                Value<bool> isActive = const Value.absent(),
                required DateTime createdAt,
                Value<DateTime?> lastTriggeredAt = const Value.absent(),
              }) => AlertsCompanion.insert(
                id: id,
                symbol: symbol,
                type: type,
                targetValue: targetValue,
                isActive: isActive,
                createdAt: createdAt,
                lastTriggeredAt: lastTriggeredAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AlertsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AlertsTable,
      Alert,
      $$AlertsTableFilterComposer,
      $$AlertsTableOrderingComposer,
      $$AlertsTableAnnotationComposer,
      $$AlertsTableCreateCompanionBuilder,
      $$AlertsTableUpdateCompanionBuilder,
      (Alert, BaseReferences<_$AppDatabase, $AlertsTable, Alert>),
      Alert,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$StocksTableTableManager get stocks =>
      $$StocksTableTableManager(_db, _db.stocks);
  $$OptionTableTableTableManager get optionTable =>
      $$OptionTableTableTableManager(_db, _db.optionTable);
  $$OrdersTableTableManager get orders =>
      $$OrdersTableTableManager(_db, _db.orders);
  $$PositionsTableTableManager get positions =>
      $$PositionsTableTableManager(_db, _db.positions);
  $$WatchlistNamesTableTableManager get watchlistNames =>
      $$WatchlistNamesTableTableManager(_db, _db.watchlistNames);
  $$WatchlistItemsTableTableManager get watchlistItems =>
      $$WatchlistItemsTableTableManager(_db, _db.watchlistItems);
  $$PortfolioTableTableTableManager get portfolioTable =>
      $$PortfolioTableTableTableManager(_db, _db.portfolioTable);
  $$TradesTableTableManager get trades =>
      $$TradesTableTableManager(_db, _db.trades);
  $$AlertsTableTableManager get alerts =>
      $$AlertsTableTableManager(_db, _db.alerts);
}
