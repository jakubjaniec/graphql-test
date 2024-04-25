// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCountriesData> _$gGetCountriesDataSerializer =
    new _$GGetCountriesDataSerializer();
Serializer<GGetCountriesData_countries> _$gGetCountriesDataCountriesSerializer =
    new _$GGetCountriesData_countriesSerializer();

class _$GGetCountriesDataSerializer
    implements StructuredSerializer<GGetCountriesData> {
  @override
  final Iterable<Type> types = const [GGetCountriesData, _$GGetCountriesData];
  @override
  final String wireName = 'GGetCountriesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetCountriesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'countries',
      serializers.serialize(object.countries,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GGetCountriesData_countries)])),
    ];

    return result;
  }

  @override
  GGetCountriesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCountriesDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'countries':
          result.countries.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetCountriesData_countries)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCountriesData_countriesSerializer
    implements StructuredSerializer<GGetCountriesData_countries> {
  @override
  final Iterable<Type> types = const [
    GGetCountriesData_countries,
    _$GGetCountriesData_countries
  ];
  @override
  final String wireName = 'GGetCountriesData_countries';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetCountriesData_countries object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'native',
      serializers.serialize(object.native,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.capital;
    if (value != null) {
      result
        ..add('capital')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currency;
    if (value != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetCountriesData_countries deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCountriesData_countriesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'native':
          result.native = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'capital':
          result.capital = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCountriesData extends GGetCountriesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetCountriesData_countries> countries;

  factory _$GGetCountriesData(
          [void Function(GGetCountriesDataBuilder)? updates]) =>
      (new GGetCountriesDataBuilder()..update(updates))._build();

  _$GGetCountriesData._({required this.G__typename, required this.countries})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetCountriesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        countries, r'GGetCountriesData', 'countries');
  }

  @override
  GGetCountriesData rebuild(void Function(GGetCountriesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCountriesDataBuilder toBuilder() =>
      new GGetCountriesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCountriesData &&
        G__typename == other.G__typename &&
        countries == other.countries;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, countries.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetCountriesData')
          ..add('G__typename', G__typename)
          ..add('countries', countries))
        .toString();
  }
}

class GGetCountriesDataBuilder
    implements Builder<GGetCountriesData, GGetCountriesDataBuilder> {
  _$GGetCountriesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetCountriesData_countries>? _countries;
  ListBuilder<GGetCountriesData_countries> get countries =>
      _$this._countries ??= new ListBuilder<GGetCountriesData_countries>();
  set countries(ListBuilder<GGetCountriesData_countries>? countries) =>
      _$this._countries = countries;

  GGetCountriesDataBuilder() {
    GGetCountriesData._initializeBuilder(this);
  }

  GGetCountriesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _countries = $v.countries.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCountriesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCountriesData;
  }

  @override
  void update(void Function(GGetCountriesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetCountriesData build() => _build();

  _$GGetCountriesData _build() {
    _$GGetCountriesData _$result;
    try {
      _$result = _$v ??
          new _$GGetCountriesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetCountriesData', 'G__typename'),
              countries: countries.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'countries';
        countries.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetCountriesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetCountriesData_countries extends GGetCountriesData_countries {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String native;
  @override
  final String? capital;
  @override
  final String? currency;

  factory _$GGetCountriesData_countries(
          [void Function(GGetCountriesData_countriesBuilder)? updates]) =>
      (new GGetCountriesData_countriesBuilder()..update(updates))._build();

  _$GGetCountriesData_countries._(
      {required this.G__typename,
      required this.name,
      required this.native,
      this.capital,
      this.currency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetCountriesData_countries', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GGetCountriesData_countries', 'name');
    BuiltValueNullFieldError.checkNotNull(
        native, r'GGetCountriesData_countries', 'native');
  }

  @override
  GGetCountriesData_countries rebuild(
          void Function(GGetCountriesData_countriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCountriesData_countriesBuilder toBuilder() =>
      new GGetCountriesData_countriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCountriesData_countries &&
        G__typename == other.G__typename &&
        name == other.name &&
        native == other.native &&
        capital == other.capital &&
        currency == other.currency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, native.hashCode);
    _$hash = $jc(_$hash, capital.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetCountriesData_countries')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('native', native)
          ..add('capital', capital)
          ..add('currency', currency))
        .toString();
  }
}

class GGetCountriesData_countriesBuilder
    implements
        Builder<GGetCountriesData_countries,
            GGetCountriesData_countriesBuilder> {
  _$GGetCountriesData_countries? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _native;
  String? get native => _$this._native;
  set native(String? native) => _$this._native = native;

  String? _capital;
  String? get capital => _$this._capital;
  set capital(String? capital) => _$this._capital = capital;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  GGetCountriesData_countriesBuilder() {
    GGetCountriesData_countries._initializeBuilder(this);
  }

  GGetCountriesData_countriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _native = $v.native;
      _capital = $v.capital;
      _currency = $v.currency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCountriesData_countries other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCountriesData_countries;
  }

  @override
  void update(void Function(GGetCountriesData_countriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetCountriesData_countries build() => _build();

  _$GGetCountriesData_countries _build() {
    final _$result = _$v ??
        new _$GGetCountriesData_countries._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GGetCountriesData_countries', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GGetCountriesData_countries', 'name'),
            native: BuiltValueNullFieldError.checkNotNull(
                native, r'GGetCountriesData_countries', 'native'),
            capital: capital,
            currency: currency);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
