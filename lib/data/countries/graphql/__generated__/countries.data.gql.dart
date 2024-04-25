// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_test/graphql/__generated__/serializers.gql.dart' as _i1;

part 'countries.data.gql.g.dart';

abstract class GGetCountriesData
    implements Built<GGetCountriesData, GGetCountriesDataBuilder> {
  GGetCountriesData._();

  factory GGetCountriesData(
          [void Function(GGetCountriesDataBuilder b) updates]) =
      _$GGetCountriesData;

  static void _initializeBuilder(GGetCountriesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetCountriesData_countries> get countries;
  static Serializer<GGetCountriesData> get serializer =>
      _$gGetCountriesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCountriesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCountriesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCountriesData.serializer,
        json,
      );
}

abstract class GGetCountriesData_countries
    implements
        Built<GGetCountriesData_countries, GGetCountriesData_countriesBuilder> {
  GGetCountriesData_countries._();

  factory GGetCountriesData_countries(
          [void Function(GGetCountriesData_countriesBuilder b) updates]) =
      _$GGetCountriesData_countries;

  static void _initializeBuilder(GGetCountriesData_countriesBuilder b) =>
      b..G__typename = 'Country';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get native;
  String? get capital;
  String? get currency;
  static Serializer<GGetCountriesData_countries> get serializer =>
      _$gGetCountriesDataCountriesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCountriesData_countries.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCountriesData_countries? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCountriesData_countries.serializer,
        json,
      );
}
