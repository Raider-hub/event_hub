// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:event_hub/api/graphql/__generated__/verify_password_reset.ast.gql.dart'
    as _i5;
import 'package:event_hub/api/graphql/__generated__/verify_password_reset.data.gql.dart'
    as _i2;
import 'package:event_hub/api/graphql/__generated__/verify_password_reset.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'verify_password_reset.req.gql.g.dart';

abstract class Gverify_password_resetReq
    implements
        Built<Gverify_password_resetReq, Gverify_password_resetReqBuilder>,
        _i1.OperationRequest<_i2.Gverify_password_resetData,
            _i3.Gverify_password_resetVars> {
  Gverify_password_resetReq._();

  factory Gverify_password_resetReq(
          [Function(Gverify_password_resetReqBuilder b) updates]) =
      _$Gverify_password_resetReq;

  static void _initializeBuilder(Gverify_password_resetReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'verify_password_reset')
    ..executeOnListen = true;
  @override
  _i3.Gverify_password_resetVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.Gverify_password_resetData? Function(
          _i2.Gverify_password_resetData?, _i2.Gverify_password_resetData?)?
      get updateResult;
  @override
  _i2.Gverify_password_resetData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.Gverify_password_resetData? parseData(Map<String, dynamic> json) =>
      _i2.Gverify_password_resetData.fromJson(json);
  static Serializer<Gverify_password_resetReq> get serializer =>
      _$gverifyPasswordResetReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(Gverify_password_resetReq.serializer, this)
          as Map<String, dynamic>);
  static Gverify_password_resetReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(Gverify_password_resetReq.serializer, json);
}
