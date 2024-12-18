import 'package:bloc_clean_architecture/src/common/api.dart';
import 'package:bloc_clean_architecture/src/common/constants.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../common/exceptions.dart';

abstract class AuthenticationRemoteDataSource {
  Future<void> login(String email, String password);
  Future<bool> checkUserExists(String email);
  Future<bool> sendOtpToEmail(String email);
  Future<bool> verifyOtp(String email, String otp);
  Future<void> registerUser(String email, String password, String firstName,
      String lastName, String mobile);
}

class AuthenticationRemoteDataSourceImpl
    implements AuthenticationRemoteDataSource {
  final Dio dio = Dio();

  @override
  Future<bool> checkUserExists(String email) async {
    try {
      final response = await dio.post(
        API.CHECK_USER_EXISTS,
        data: {
          'email': email,
          'password': '',
          'createdBy': '',
          'isAuthenticated': false,
          'userFName': '',
          'userLName': '',
          'mobile': '',
          'otp': '',
          'userTypeId': 0,
          'userStatusId': 0
        },
      );
      return response.data['success'];
    } catch (e) {
      // Handle error or return false if user doesn't exist
      return false;
    }
  }

  @override
  Future<bool> sendOtpToEmail(String email) async {
    try {
      final response = await dio.post(
        API.SEND_OTP_EMAIL,
        data: {
          'email': email,
        },
      );
      return response.statusCode == 200;
    } catch (e) {
      // Handle error or return false if user doesn't exist
      return false;
    }
  }

  @override
  Future<bool> verifyOtp(String email, String otp) async {
    try {
      final response = await dio.post(
        API.VERIFY_OTP_EMAIL,
        data: {
          'email': email,
          'otp': otp,
        },
      );
      return response.data['message'] != 'OTP has not Matched.';
    } catch (e) {
      // Handle error or return false if user doesn't exist
      return false;
    }
  }

  @override
  Future<void> login(String email, String password) async {
    try {
      // Check if user exists before attempting to log in
      bool userExists = await checkUserExists(email);
      if (!userExists) {
        throw UserNotFoundException();
      }

      final prefs = await SharedPreferences.getInstance();
      final response = await dio.post(API.LOGIN, data: {
        'userName': email,
        'password': password,
        'rememberMe': true,
      });
      final token = response.data['tokenString'].toString();
      final userLastName = response.data['userLName'].toString();

      await prefs.setString(ACCESS_TOKEN, token);
      await prefs.setString(USER_LAST_NAME, userLastName);
      await prefs.setString(USER_EMAIL, email);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> registerUser(String email, String password, String firstName,
      String lastName, String mobile) async {
    try {
      final response = await dio.post(API.REGISTER, data: {
        'email': email,
        'password': password,
        'userFName': firstName,
        'userLName': lastName,
        'mobile': mobile,
      });
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(USER_LAST_NAME, lastName);
      await prefs.setString(USER_EMAIL, email);
      print(
          "=====================Response Data : ${response.data} ========================");
      // return response.data['success'];
      // final token = response.data['token'].toString();
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
