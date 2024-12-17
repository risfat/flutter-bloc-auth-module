import 'package:bloc_clean_architecture/src/common/failures.dart';
import 'package:bloc_clean_architecture/src/domain/repositories/autentication_repository.dart';
import 'package:dartz/dartz.dart';

class Auth {
  Auth(this._repository);
  final AuthenticationRepository _repository;

  Future<Either<Failure, void>> executeLogin(
      String email, String password) async {
    return await _repository.login(email, password);
  }

  Future<Either<Failure, bool>> executeSendOtp(String email) async {
    return await _repository.sendOtp(email);
  }

  Future<Either<Failure, bool>> executeVerifyOtp(
      String email, String otp) async {
    return await _repository.verifyOtp(email, otp);
  }

  Future<Either<Failure, void>> executeRegisterAfterOtpMatched(
      String email,
      String password,
      String firstName,
      String lastName,
      String mobile,
      String otp) async {
    return await _repository.register(
        email, password, firstName, lastName, mobile);
  }
}
