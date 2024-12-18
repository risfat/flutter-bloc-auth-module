// ignore_for_file: constant_identifier_names

class API {
  static const BASE_URL = 'https://demo-api.devdata.top/api';

  // Authentication
  static const LOGIN = '$BASE_URL/Administrator/Login';
  static const REGISTER = '$BASE_URL/Administrator/SaveUser';
  static const CHECK_USER_EXISTS = '$BASE_URL/Administrator/CheckUserExists';
  static const SEND_OTP_EMAIL = '$BASE_URL/Administrator/SendOTPToEmail';
  static const VERIFY_OTP_EMAIL = '$BASE_URL/Administrator/CheckOTPEmail';
  static const REFRESH_TOKEN = '$BASE_URL/Administrator/RefreshToken';
}
