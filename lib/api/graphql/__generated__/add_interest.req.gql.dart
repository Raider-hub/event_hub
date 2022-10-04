// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/__generated__/add_interest.ast.gql.dart'
    as _i5;
import 'package:event_hub/api/graphql/__generated__/add_interest.data.gql.dart'
    as _i2;
import 'package:event_hub/api/graphql/__generated__/add_interest.var.gql.dart'
    as _i3;
import 'package:event_hub/api/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'add_interest.req.gql.g.dart';

abstract class Gadd_interestReq
    implements
        Built<Gadd_interestReq, Gadd_interestReqBuilder>,
        _i1.OperationRequest<_i2.Gadd_interestData, _i3.Gadd_interestVars> {
  Gadd_interestReq._();

  factory Gadd_interestReq([Function(Gadd_interestReqBuilder b) updates]) =
      _$Gadd_interestReq;

  static void _initializeBuilder(Gadd_interestReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'add_interest')
    ..executeOnListen = true;
  @override
  _i3.Gadd_interestVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.Gadd_interestData? Function(
      _i2.Gadd_interestData?, _i2.Gadd_interestData?)? get updateResult;
  @override
  _i2.Gadd_interestData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.Gadd_interestData? parseData(Map<String, dynamic> json) =>
      _i2.Gadd_interestData.fromJson(json);
  static Serializer<Gadd_interestReq> get serializer =>
      _$gaddInterestReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(Gadd_interestReq.serializer, this)
          as Map<String, dynamic>);
  static Gadd_interestReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(Gadd_interestReq.serializer, json);
}
