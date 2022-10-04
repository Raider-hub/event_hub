// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/__generated__/forget_password.ast.gql.dart'
    as _i5;
import 'package:event_hub/api/graphql/__generated__/forget_password.data.gql.dart'
    as _i2;
import 'package:event_hub/api/graphql/__generated__/forget_password.var.gql.dart'
    as _i3;
import 'package:event_hub/api/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'forget_password.req.gql.g.dart';

abstract class Gforgot_passwordReq
    implements
        Built<Gforgot_passwordReq, Gforgot_passwordReqBuilder>,
        _i1.OperationRequest<_i2.Gforgot_passwordData,
            _i3.Gforgot_passwordVars> {
  Gforgot_passwordReq._();

  factory Gforgot_passwordReq(
      [Function(Gforgot_passwordReqBuilder b) updates]) = _$Gforgot_passwordReq;

  static void _initializeBuilder(Gforgot_passwordReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'forgot_password')
    ..executeOnListen = true;
  @override
  _i3.Gforgot_passwordVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.Gforgot_passwordData? Function(
      _i2.Gforgot_passwordData?, _i2.Gforgot_passwordData?)? get updateResult;
  @override
  _i2.Gforgot_passwordData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.Gforgot_passwordData? parseData(Map<String, dynamic> json) =>
      _i2.Gforgot_passwordData.fromJson(json);
  static Serializer<Gforgot_passwordReq> get serializer =>
      _$gforgotPasswordReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(Gforgot_passwordReq.serializer, this)
          as Map<String, dynamic>);
  static Gforgot_passwordReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(Gforgot_passwordReq.serializer, json);
}
