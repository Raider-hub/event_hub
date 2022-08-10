// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:event_hub/api/graphql/create_user.ast.gql.dart' as _i5;
import 'package:event_hub/api/graphql/create_user.data.gql.dart' as _i2;
import 'package:event_hub/api/graphql/create_user.var.gql.dart' as _i3;
import 'package:event_hub/api/graphql/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'create_user.req.gql.g.dart';

abstract class Gcreate_userReq
    implements
        Built<Gcreate_userReq, Gcreate_userReqBuilder>,
        _i1.OperationRequest<_i2.Gcreate_userData, _i3.Gcreate_userVars> {
  Gcreate_userReq._();

  factory Gcreate_userReq([Function(Gcreate_userReqBuilder b) updates]) =
      _$Gcreate_userReq;

  static void _initializeBuilder(Gcreate_userReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'create_user')
    ..executeOnListen = true;
  _i3.Gcreate_userVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.Gcreate_userData? Function(_i2.Gcreate_userData?, _i2.Gcreate_userData?)?
      get updateResult;
  _i2.Gcreate_userData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.Gcreate_userData? parseData(Map<String, dynamic> json) =>
      _i2.Gcreate_userData.fromJson(json);
  static Serializer<Gcreate_userReq> get serializer =>
      _$gcreateUserReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(Gcreate_userReq.serializer, this)
          as Map<String, dynamic>);
  static Gcreate_userReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(Gcreate_userReq.serializer, json);
}
