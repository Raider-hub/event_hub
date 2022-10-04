import 'package:event_hub/model/user_model.dart';


abstract class BaseApiRepository {
  //Future<List<PersonModel>> fetchAllPeople();
  // Future<void> initGraphQL();
  Future<void> createUser({required UserModel user});
  Future<void> login({required UserModel user});
  Future<void> verifyOtp({required String otp});
  Future<void> logOut({required UserModel user});
  Future<void> resendOtp();
  Future<void> addInterest({required List<int> choices});
 Future<void> forgetPassword({required UserModel user});
 Future<void> verifyPasswordCode({required String otp});
 Future<void> resetPassword({required UserModel user});



  // Future<void> updateEvent();
  // Future<void> deleteEvent();
}
