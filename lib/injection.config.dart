// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_database/firebase_database.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'app/config/firebase_modules_injectable.dart' as _i21;
import 'app/modules/details_sensor/data/repository.dart' as _i9;
import 'app/modules/details_sensor/domain/repository/repository.dart' as _i8;
import 'app/modules/details_sensor/domain/usecases/getSensor_usecase.dart'
    as _i16;
import 'app/modules/details_sensor/presentation/bloc/details_sensor_bloc.dart'
    as _i20;
import 'app/modules/login/data/repositories/auth_repository_impl.dart' as _i13;
import 'app/modules/login/domain/repositories/auth_repository.dart' as _i12;
import 'app/modules/login/domain/usecases/auth_use_case.dart' as _i14;
import 'app/modules/login/presentation/bloc/login_bloc.dart' as _i18;
import 'app/modules/setores/data/repository.dart' as _i11;
import 'app/modules/setores/domain/repository/setor_repository.dart' as _i10;
import 'app/modules/setores/domain/usecase/getSensor.dart' as _i15;
import 'app/modules/setores/domain/usecase/getSetores.dart' as _i17;
import 'app/modules/setores/presentation/bloc/setor_bloc.dart' as _i19;

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
    gh.lazySingleton<_i3.Client>(() => firebaseInjectableModule.client);
    gh.lazySingleton<_i4.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i5.FirebaseDatabase>(
        () => firebaseInjectableModule.database);
    gh.lazySingleton<_i6.FirebaseFirestore>(
        () => firebaseInjectableModule.store);
    gh.lazySingleton<_i7.FirebaseStorage>(
        () => firebaseInjectableModule.storage);
    gh.factory<_i8.ISensorRepository>(
        () => _i9.SensorRepository(gh<_i5.FirebaseDatabase>()));
    gh.factory<_i10.ISetorRepository>(() => _i11.SensorRepository(
          gh<_i6.FirebaseFirestore>(),
          gh<_i3.Client>(),
        ));
    gh.factory<_i12.AuthRepository>(
        () => _i13.AuthRepositoryImpl(gh<_i4.FirebaseAuth>()));
    gh.factory<_i14.AuthUseCase>(
        () => _i14.AuthUseCaseImpl(gh<_i12.AuthRepository>()));
    gh.factory<_i15.GetSensorUsecase>(
        () => _i15.GetSensorUsecaseImp(gh<_i10.ISetorRepository>()));
    gh.factory<_i16.IGetSensor>(
        () => _i16.GetSensor(gh<_i8.ISensorRepository>()));
    gh.factory<_i17.IGetSetoresUsecase>(
        () => _i17.GetSetoresUsecase(gh<_i10.ISetorRepository>()));
    gh.factory<_i18.LoginBloc>(
        () => _i18.LoginBloc(loginUsecase: gh<_i14.AuthUseCase>()));
    gh.singleton<_i19.SetorBloc>(_i19.SetorBloc(
      gh<_i17.IGetSetoresUsecase>(),
      gh<_i15.GetSensorUsecase>(),
    ));
    gh.factory<_i20.DetailsSensorBloc>(
        () => _i20.DetailsSensorBloc(gh<_i16.IGetSensor>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i21.FirebaseInjectableModule {}
