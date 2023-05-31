import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../helpers/error/login/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> loginWithEmailAndPassword(
      String email, String password);
  Future<Either<Failure, User>> loginWithFacebook();
  Future<Either<Failure, User>> loginWithGoogle();
  Future<Either<Failure, User>> loginWithPhone(String phoneNumber);
}
