// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_test/graphql/__generated__/serializers.gql.dart' as _i1;

part 'countries.var.gql.g.dart';

abstract class GGetCountriesVars
    implements Built<GGetCountriesVars, GGetCountriesVarsBuilder> {
  GGetCountriesVars._();

  factory GGetCountriesVars(
          [void Function(GGetCountriesVarsBuilder b) updates]) =
      _$GGetCountriesVars;

  static Serializer<GGetCountriesVars> get serializer =>
      _$gGetCountriesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCountriesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCountriesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCountriesVars.serializer,
        json,
      );
}
