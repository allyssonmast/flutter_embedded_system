// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'app/config/firebase_modules_injectable.dart' as _i14;
import 'app/modules/login/data/repositories/auth_repository_impl.dart' as _i9;
import 'app/modules/login/domain/repositories/auth_repository.dart' as _i8;
import 'app/modules/login/domain/usecases/auth_use_case.dart' as _i10;
import 'app/modules/login/presentation/bloc/login_bloc.dart' as _i12;
import 'app/modules/sensores/data/repository.dart' as _i7;
import 'app/modules/sensores/domain/repository/setor_repository.dart' as _i6;
import 'app/modules/sensores/domain/usecase/getSetores.dart' as _i11;
import 'app/modules/sensores/presentation/bloc/setor_bloc.dart' as _i13;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i3.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i4.FirebaseFirestore>(
        () => firebaseInjectableModule.store);
    gh.lazySingleton<_i5.FirebaseStorage>(
        () => firebaseInjectableModule.storage);
    gh.factory<_i6.ISetorRepository>(
        () => _i7.SensorRepository(gh<_i4.FirebaseFirestore>()));
    gh.factory<_i8.AuthRepository>(
        () => _i9.AuthRepositoryImpl(gh<_i3.FirebaseAuth>()));
    gh.factory<_i10.AuthUseCase>(
        () => _i10.AuthUseCaseImpl(gh<_i8.AuthRepository>()));
    gh.factory<_i11.IGetSetoresUsecase>(
        () => _i11.GetSetoresUsecase(gh<_i6.ISetorRepository>()));
    gh.factory<_i12.LoginBloc>(
        () => _i12.LoginBloc(loginUsecase: gh<_i10.AuthUseCase>()));
    gh.factory<_i13.SetorBloc>(
        () => _i13.SetorBloc(gh<_i11.IGetSetoresUsecase>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i14.FirebaseInjectableModule {}
