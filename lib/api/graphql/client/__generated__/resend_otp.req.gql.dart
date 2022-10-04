// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:event_hub/api/graphql/client/__generated__/resend_otp.ast.gql.dart'
    as _i5;
import 'package:event_hub/api/graphql/client/__generated__/resend_otp.data.gql.dart'
    as _i2;
import 'package:event_hub/api/graphql/client/__generated__/resend_otp.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'resend_otp.req.gql.g.dart';

abstract class Gresend_otpReq
    implements
        Built<Gresend_otpReq, Gresend_otpReqBuilder>,
        _i1.OperationRequest<_i2.Gresend_otpData, _i3.Gresend_otpVars> {
  Gresend_otpReq._();

  factory Gresend_otpReq([Function(Gresend_otpReqBuilder b) updates]) =
      _$Gresend_otpReq;

  static void _initializeBuilder(Gresend_otpReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'resend_otp')
    ..executeOnListen = true;
  @override
  _i3.Gresend_otpVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.Gresend_otpData? Function(_i2.Gresend_otpData?, _i2.Gresend_otpData?)?
      get updateResult;
  @override
  _i2.Gresend_otpData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.Gresend_otpData? parseData(Map<String, dynamic> json) =>
      _i2.Gresend_otpData.fromJson(json);
  static Serializer<Gresend_otpReq> get serializer => _$gresendOtpReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(Gresend_otpReq.serializer, this)
          as Map<String, dynamic>);
  static Gresend_otpReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(Gresend_otpReq.serializer, json);
}
