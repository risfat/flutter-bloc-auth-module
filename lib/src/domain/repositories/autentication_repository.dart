import 'package:bloc_clean_architecture/src/common/failures.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, void>> login(String email, String password);
  Future<Either<Failure, bool>> sendOtp(String email);
  Future<Either<Failure, bool>> verifyOtp(String email, String otp);
  Future<Either<Failure, void>> register(String email, String password,
      String firstName, String lastName, String mobile);
}
