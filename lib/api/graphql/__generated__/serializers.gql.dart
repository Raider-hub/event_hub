// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:event_hub/api/graphql/__generated__/add_interest.data.gql.dart'
    show
        Gadd_interestData,
        Gadd_interestData_add_interest,
        Gadd_interestData_add_interest_members;
import 'package:event_hub/api/graphql/__generated__/add_interest.req.gql.dart'
    show Gadd_interestReq;
import 'package:event_hub/api/graphql/__generated__/add_interest.var.gql.dart'
    show Gadd_interestVars;
import 'package:event_hub/api/graphql/__generated__/create_user.data.gql.dart'
    show Gcreate_userData, Gcreate_userData_create_user;
import 'package:event_hub/api/graphql/__generated__/create_user.req.gql.dart'
    show Gcreate_userReq;
import 'package:event_hub/api/graphql/__generated__/create_user.var.gql.dart'
    show Gcreate_userVars;
import 'package:event_hub/api/graphql/__generated__/forget_password.data.gql.dart'
    show Gforgot_passwordData, Gforgot_passwordData_forgot_password;
import 'package:event_hub/api/graphql/__generated__/forget_password.req.gql.dart'
    show Gforgot_passwordReq;
import 'package:event_hub/api/graphql/__generated__/forget_password.var.gql.dart'
    show Gforgot_passwordVars;
import 'package:event_hub/api/graphql/__generated__/login_user.data.gql.dart'
    show GloginData, GloginData_login;
import 'package:event_hub/api/graphql/__generated__/login_user.req.gql.dart'
    show GloginReq;
import 'package:event_hub/api/graphql/__generated__/login_user.var.gql.dart'
    show GloginVars;
import 'package:event_hub/api/graphql/__generated__/reset_password.data.gql.dart'
    show Greset_passwordData, Greset_passwordData_reset_password;
import 'package:event_hub/api/graphql/__generated__/reset_password.req.gql.dart'
    show Greset_passwordReq;
import 'package:event_hub/api/graphql/__generated__/reset_password.var.gql.dart'
    show Greset_passwordVars;
import 'package:event_hub/api/graphql/__generated__/schema.schema.gql.dart'
    show GUpload;
import 'package:event_hub/api/graphql/__generated__/verify_password_reset.data.gql.dart'
    show
        Gverify_password_resetData,
        Gverify_password_resetData_verify_password_reset;
import 'package:event_hub/api/graphql/__generated__/verify_password_reset.req.gql.dart'
    show Gverify_password_resetReq;
import 'package:event_hub/api/graphql/__generated__/verify_password_reset.var.gql.dart'
    show Gverify_password_resetVars;
import 'package:event_hub/api/graphql/client/__generated__/resend_otp.data.gql.dart'
    show Gresend_otpData, Gresend_otpData_resend_otp;
import 'package:event_hub/api/graphql/client/__generated__/resend_otp.req.gql.dart'
    show Gresend_otpReq;
import 'package:event_hub/api/graphql/client/__generated__/resend_otp.var.gql.dart'
    show Gresend_otpVars;
import 'package:event_hub/api/graphql/client/__generated__/verify_otp.data.gql.dart'
    show Gverify_otpData, Gverify_otpData_verify_otp;
import 'package:event_hub/api/graphql/client/__generated__/verify_otp.req.gql.dart'
    show Gverify_otpReq;
import 'package:event_hub/api/graphql/client/__generated__/verify_otp.var.gql.dart'
    show Gverify_otpVars;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GUpload,
  Gadd_interestData,
  Gadd_interestData_add_interest,
  Gadd_interestData_add_interest_members,
  Gadd_interestReq,
  Gadd_interestVars,
  Gcreate_userData,
  Gcreate_userData_create_user,
  Gcreate_userReq,
  Gcreate_userVars,
  Gforgot_passwordData,
  Gforgot_passwordData_forgot_password,
  Gforgot_passwordReq,
  Gforgot_passwordVars,
  GloginData,
  GloginData_login,
  GloginReq,
  GloginVars,
  Gresend_otpData,
  Gresend_otpData_resend_otp,
  Gresend_otpReq,
  Gresend_otpVars,
  Greset_passwordData,
  Greset_passwordData_reset_password,
  Greset_passwordReq,
  Greset_passwordVars,
  Gverify_otpData,
  Gverify_otpData_verify_otp,
  Gverify_otpReq,
  Gverify_otpVars,
  Gverify_password_resetData,
  Gverify_password_resetData_verify_password_reset,
  Gverify_password_resetReq,
  Gverify_password_resetVars
])
final Serializers serializers = _serializersBuilder.build();
