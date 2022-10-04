import 'package:built_collection/src/list.dart';
import 'package:event_hub/api/graphql/__generated__/add_interest.req.gql.dart';
import 'package:event_hub/api/graphql/__generated__/create_user.req.gql.dart';
import 'package:event_hub/api/graphql/__generated__/forget_password.req.gql.dart';
import 'package:event_hub/api/graphql/__generated__/login_user.req.gql.dart';
import 'package:event_hub/api/graphql/__generated__/reset_password.req.gql.dart';
import 'package:event_hub/api/graphql/__generated__/verify_password_reset.req.gql.dart';
import 'package:event_hub/api/graphql/client/__generated__/resend_otp.req.gql.dart';
import 'package:event_hub/api/graphql/client/__generated__/verify_otp.req.gql.dart';
import 'package:event_hub/model/user_model.dart';
import 'package:event_hub/repositories/base_api_repository.dart';
import 'package:event_hub/widgets/constants.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/cupertino.dart';
import 'package:nb_utils/nb_utils.dart';

class ApiRepository implements BaseApiRepository {
  ApiRepository({required Client client}) : _client = client;

  final Client _client;

  @override
  Future<void> createUser({required UserModel user}) async {
    try {
      final createAccount = Gcreate_userReq((b) => b
        ..vars.fullname = user.fullname
        ..vars.email = user.email
        ..vars.password = user.password);

      var response = await _client.request(createAccount).first;

      bool _apiResponse = response.data != null &&
          response.data!.create_user.ok.toString() == 'true';

      if (_apiResponse) {
        final token = response.data!.create_user.token.toString();
        await setValue(apitoken, token);
      } else {
        throw response.data!.create_user.message;
      }
    } catch (e) {
      print('error caught: $e');
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }

  @override
  Future<void> verifyOtp({required String otp}) async {
    try {
      final verifyUserOtp = Gverify_otpReq((b) => b..vars.otp = otp);

      var response = await _client.request(verifyUserOtp).first;

      if (response.data != null &&
          response.data?.verify_otp.ok.toString() == 'true') {
        // throw response.data!.verify_otp.message;

      } else {
        throw response.graphqlErrors!.first.message.toString();
      }
    } catch (e) {
      print('error caught: $e');
      rethrow;
    }
  }

  @override
  Future<void> logOut({required UserModel user}) {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  Future<void> resendOtp() async {
    try {
      final resendOtp = Gresend_otpReq();

      var response = await _client.request(resendOtp).first;

      if (response.data != null &&
          response.data!.resend_otp.ok.toString() == 'true') {
      } else if (response.data!.resend_otp.ok.toString() != 'true') {
        throw response.data!.resend_otp.message;
      } else {
        throw response.graphqlErrors!.first.message.toString();
      }
    } catch (e) {
      print('Error Caught: $e');
      rethrow;
    }
  }

  @override
  Future<void> login({required UserModel user}) async {
    try {
      final loginAccount = GloginReq((b) => b
        ..vars.email = user.email
        ..vars.password = user.password);

      var response = await _client.request(loginAccount).first;

      bool _apiResponse =
          response.data != null && response.data!.login.ok.toString() == 'true';

      if (_apiResponse) {
        final token = response.data!.login.token.toString();
        await setValue(apitoken, token);
      } else {
        throw response.data!.login.message;
      }
    } catch (e) {
      print('error caught: $e');
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }

  @override
  Future<void> addInterest({required List<int> choices}) async {
    try {
      final addChoices =
          Gadd_interestReq((b) => b..vars.interest = ListBuilder(choices));

      var response = await _client.request(addChoices).first;

      bool _apiResponse = response.data != null;

      if (_apiResponse) {
        debugPrint(response.data!.add_interest.map((e) => e.id).toString());
      } else {
        throw response.graphqlErrors!.first.message.toString();
      }
    } catch (e) {
      print('error caught: $e');
      rethrow;
    }
  }

  @override
  Future<void> forgetPassword({required UserModel user}) async {
    try {
      final forgetPassword =
          Gforgot_passwordReq((b) => b..vars.email = user.email);

      var response = await _client.request(forgetPassword).first;

      bool _apiResponse = response.data != null &&
          response.data!.forgot_password.ok.toString() == 'true';

      if (_apiResponse) {
        final token = response.data!.forgot_password.token.toString();
        await setValue(apitoken, token);
      } else {
        throw response.graphqlErrors!.first.message.toString();
      }
    } catch (e) {
      print('the error is : $e ');
      rethrow;
    }
  }

  @override
  Future<void> verifyPasswordCode({required String otp}) async {
    final verifyPasswordCode =
        Gverify_password_resetReq((b) => b..vars.code = otp);

    var response = await _client.request(verifyPasswordCode).first;

    bool _apiResponse = response.data != null &&
        response.data!.verify_password_reset.ok.toString() == 'true';

    if (_apiResponse) {
      // throw response.data!.verify_password_reset.message.toString();
    } else {
      throw response.graphqlErrors!.first.message.toString();
    }
  }

  @override
  Future<void> resetPassword({required user}) async {
    try {} catch (e) {
      final resetPassword =
          Greset_passwordReq((b) => b..vars.password = user.password);

          var response = await _client.request(resetPassword).first;

          bool _apiResponse = response.data != null && response.data!.reset_password.message.toString() == 'true';

          if (_apiResponse) {

            
          } else{
            
          }
    }
  }
}
