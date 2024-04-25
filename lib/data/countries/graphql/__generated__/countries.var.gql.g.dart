// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCountriesVars> _$gGetCountriesVarsSerializer =
    new _$GGetCountriesVarsSerializer();

class _$GGetCountriesVarsSerializer
    implements StructuredSerializer<GGetCountriesVars> {
  @override
  final Iterable<Type> types = const [GGetCountriesVars, _$GGetCountriesVars];
  @override
  final String wireName = 'GGetCountriesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetCountriesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetCountriesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetCountriesVarsBuilder().build();
  }
}

class _$GGetCountriesVars extends GGetCountriesVars {
  factory _$GGetCountriesVars(
          [void Function(GGetCountriesVarsBuilder)? updates]) =>
      (new GGetCountriesVarsBuilder()..update(updates))._build();

  _$GGetCountriesVars._() : super._();

  @override
  GGetCountriesVars rebuild(void Function(GGetCountriesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCountriesVarsBuilder toBuilder() =>
      new GGetCountriesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCountriesVars;
  }

  @override
  int get hashCode {
    return 226832620;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GGetCountriesVars').toString();
  }
}

class GGetCountriesVarsBuilder
    implements Builder<GGetCountriesVars, GGetCountriesVarsBuilder> {
  _$GGetCountriesVars? _$v;

  GGetCountriesVarsBuilder();

  @override
  void replace(GGetCountriesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCountriesVars;
  }

  @override
  void update(void Function(GGetCountriesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetCountriesVars build() => _build();

  _$GGetCountriesVars _build() {
    final _$result = _$v ?? new _$GGetCountriesVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
