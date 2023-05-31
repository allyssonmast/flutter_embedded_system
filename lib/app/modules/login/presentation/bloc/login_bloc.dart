import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../../helpers/error/login/failure.dart';
import '../../domain/usecases/auth_use_case.dart';

part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthUseCase loginUsecase;

  LoginBloc({required this.loginUsecase}) : super(LoginInitial()) {
    on<LoginWithEmailButtonPressed>(_mapLoginWithEmailButtonPressedToState);
  }

  _mapLoginWithEmailButtonPressedToState(event, emit) async {
    emit(LoginLoading());

    final Either<Failure, User> result = await loginUsecase
        .loginWithEmailAndPassword(event.email, event.password);

    emit(result.fold(
      (failure) => LoginFailure(errorMessage: failure.message),
      (user) => LoginSuccess(user: user),
    ));
  }
}
