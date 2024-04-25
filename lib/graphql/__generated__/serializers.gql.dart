// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:graphql_test/data/countries/graphql/__generated__/countries.data.gql.dart'
    show GGetCountriesData, GGetCountriesData_countries;
import 'package:graphql_test/data/countries/graphql/__generated__/countries.req.gql.dart'
    show GGetCountriesReq;
import 'package:graphql_test/data/countries/graphql/__generated__/countries.var.gql.dart'
    show GGetCountriesVars;
import 'package:graphql_test/graphql/__generated__/schema.schema.gql.dart'
    show
        GContinentFilterInput,
        GCountryFilterInput,
        GLanguageFilterInput,
        GStringQueryOperatorInput;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GContinentFilterInput,
  GCountryFilterInput,
  GGetCountriesData,
  GGetCountriesData_countries,
  GGetCountriesReq,
  GGetCountriesVars,
  GLanguageFilterInput,
  GStringQueryOperatorInput,
])
final Serializers serializers = _serializersBuilder.build();
