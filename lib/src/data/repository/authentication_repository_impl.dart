import 'dart:io';

import 'package:bloc_clean_architecture/src/common/exceptions.dart';
import 'package:bloc_clean_architecture/src/common/failures.dart';
import 'package:bloc_clean_architecture/src/data/datasource/authentication_remote_data_source.dart';
import 'package:bloc_clean_architecture/src/domain/repositories/autentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  AuthenticationRepositoryImpl(this.dataSource);
  final AuthenticationRemoteDataSource dataSource;
  @override
  Future<Either<Failure, void>> login(
    String email,
    String password,
  ) async {
    try {
      final result = await dataSource.login(email, password);
      return Right(result);
    } on UserNotFoundException {
      return left(
          UserNotFoundFailure('User not found. Please check your email.'));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure('No internet connection'),
      );
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          e.response?.data['message'].toString() ??
              'Error occurred Please try again',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> sendOtp(String email) async {
    try {
      final result = await dataSource.sendOtpToEmail(email);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure('No internet connection'),
      );
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          e.response?.data['message'].toString() ??
              'Error occurred Please try again',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> verifyOtp(String email, String otp) async {
    try {
      final result = await dataSource.verifyOtp(email, otp);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure('No internet connection'),
      );
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          e.response?.data['message'].toString() ??
              'Error occurred Please try again',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> register(String email, String password,
      String firstName, String lastName, String mobile) async {
    try {
      final result = await dataSource.registerUser(
          email, password, firstName, lastName, mobile);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure('No internet connection'),
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 400 || e.response?.statusCode == 500) {
        final responseData = e.response?.data;
        if (responseData is Map<String, dynamic> &&
            responseData.containsKey('errors')) {
          final errors = List<String>.from(responseData['errors']);
          return Left(ValidationFailure(errors));
        } else {
          return Left(
              BadRequestFailure(responseData['message'] ?? 'Invalid request'));
        }
      } else {
        return Left(ServerFailure('An error occurred while registering'));
      }
    } catch (e) {
      return Left(UnexpectedFailure('An unexpected error occurred'));
    }
  }
}
