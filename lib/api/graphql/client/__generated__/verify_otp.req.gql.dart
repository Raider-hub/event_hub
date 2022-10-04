// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:event_hub/api/graphql/client/__generated__/verify_otp.ast.gql.dart'
    as _i5;
import 'package:event_hub/api/graphql/client/__generated__/verify_otp.data.gql.dart'
    as _i2;
import 'package:event_hub/api/graphql/client/__generated__/verify_otp.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'verify_otp.req.gql.g.dart';

abstract class Gverify_otpReq
    implements
        Built<Gverify_otpReq, Gverify_otpReqBuilder>,
        _i1.OperationRequest<_i2.Gverify_otpData, _i3.Gverify_otpVars> {
  Gverify_otpReq._();

  factory Gverify_otpReq([Function(Gverify_otpReqBuilder b) updates]) =
      _$Gverify_otpReq;

  static void _initializeBuilder(Gverify_otpReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'verify_otp')
    ..executeOnListen = true;
  @override
  _i3.Gverify_otpVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.Gverify_otpData? Function(_i2.Gverify_otpData?, _i2.Gverify_otpData?)?
      get updateResult;
  @override
  _i2.Gverify_otpData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.Gverify_otpData? parseData(Map<String, dynamic> json) =>
      _i2.Gverify_otpData.fromJson(json);
  static Serializer<Gverify_otpReq> get serializer => _$gverifyOtpReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(Gverify_otpReq.serializer, this)
          as Map<String, dynamic>);
  static Gverify_otpReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(Gverify_otpReq.serializer, json);
}
