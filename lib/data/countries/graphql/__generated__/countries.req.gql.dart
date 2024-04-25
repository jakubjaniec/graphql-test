// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:graphql_test/data/countries/graphql/__generated__/countries.ast.gql.dart'
    as _i5;
import 'package:graphql_test/data/countries/graphql/__generated__/countries.data.gql.dart'
    as _i2;
import 'package:graphql_test/data/countries/graphql/__generated__/countries.var.gql.dart'
    as _i3;
import 'package:graphql_test/graphql/__generated__/serializers.gql.dart' as _i6;

part 'countries.req.gql.g.dart';

abstract class GGetCountriesReq
    implements
        Built<GGetCountriesReq, GGetCountriesReqBuilder>,
        _i1.OperationRequest<_i2.GGetCountriesData, _i3.GGetCountriesVars> {
  GGetCountriesReq._();

  factory GGetCountriesReq([void Function(GGetCountriesReqBuilder b) updates]) =
      _$GGetCountriesReq;

  static void _initializeBuilder(GGetCountriesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetCountries',
    )
    ..executeOnListen = true;

  @override
  _i3.GGetCountriesVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GGetCountriesData? Function(
    _i2.GGetCountriesData?,
    _i2.GGetCountriesData?,
  )? get updateResult;
  @override
  _i2.GGetCountriesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GGetCountriesData? parseData(Map<String, dynamic> json) =>
      _i2.GGetCountriesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GGetCountriesData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GGetCountriesData, _i3.GGetCountriesVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GGetCountriesReq> get serializer =>
      _$gGetCountriesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetCountriesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCountriesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetCountriesReq.serializer,
        json,
      );
}
