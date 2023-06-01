// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_database/firebase_database.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'app/config/firebase_modules_injectable.dart' as _i25;
import 'app/modules/details_sensor/data/repository.dart' as _i8;
import 'app/modules/details_sensor/domain/repository/repository.dart' as _i7;
import 'app/modules/details_sensor/domain/usecases/getPerdasCount.dart' as _i18;
import 'app/modules/details_sensor/domain/usecases/getSensor_usecase.dart'
    as _i19;
import 'app/modules/details_sensor/presentation/bloc/details_sensor_bloc.dart'
    as _i24;
import 'app/modules/login/data/repositories/auth_repository_impl.dart' as _i15;
import 'app/modules/login/domain/repositories/auth_repository.dart' as _i14;
import 'app/modules/login/domain/usecases/auth_use_case.dart' as _i16;
import 'app/modules/login/presentation/bloc/login_bloc.dart' as _i21;
import 'app/modules/perdas/data/repository.dart' as _i12;
import 'app/modules/perdas/domain/repository/repository.dart' as _i11;
import 'app/modules/perdas/domain/usecase/getAlllosers.dart' as _i17;
import 'app/modules/perdas/domain/usecase/set_loser_usecase.dart' as _i13;
import 'app/modules/perdas/presentation/bloc/perdas_bloc.dart' as _i22;
import 'app/modules/setores/data/repository.dart' as _i10;
import 'app/modules/setores/domain/repository/setor_repository.dart' as _i9;
import 'app/modules/setores/domain/usecase/getSetores.dart' as _i20;
import 'app/modules/setores/presentation/bloc/setor_bloc.dart' as _i23;

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
    gh.lazySingleton<_i4.FirebaseDatabase>(
        () => firebaseInjectableModule.database);
    gh.lazySingleton<_i5.FirebaseFirestore>(
        () => firebaseInjectableModule.store);
    gh.lazySingleton<_i6.FirebaseStorage>(
        () => firebaseInjectableModule.storage);
    gh.factory<_i7.ISensorRepository>(() => _i8.SensorRepository(
          gh<_i4.FirebaseDatabase>(),
          gh<_i5.FirebaseFirestore>(),
        ));
    gh.factory<_i9.ISetorRepository>(
        () => _i10.SensorRepository(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i11.PerdasRepository>(
        () => _i12.PerdaRepositoryImp(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i13.SetLoserUseCase>(
        () => _i13.SetLoserUseCaseImp(gh<_i11.PerdasRepository>()));
    gh.factory<_i14.AuthRepository>(
        () => _i15.AuthRepositoryImpl(gh<_i3.FirebaseAuth>()));
    gh.factory<_i16.AuthUseCase>(
        () => _i16.AuthUseCaseImpl(gh<_i14.AuthRepository>()));
    gh.factory<_i17.GetAllLosers>(
        () => _i17.GetAllLosersImp(gh<_i11.PerdasRepository>()));
    gh.factory<_i18.GetPerdasCountUseCase>(
        () => _i18.GetPerdasCountUseCaseImp(gh<_i7.ISensorRepository>()));
    gh.factory<_i19.IGetSensor>(
        () => _i19.GetSensor(gh<_i7.ISensorRepository>()));
    gh.factory<_i20.IGetSetoresUsecase>(
        () => _i20.GetSetoresUsecase(gh<_i9.ISetorRepository>()));
    gh.factory<_i21.LoginBloc>(
        () => _i21.LoginBloc(loginUsecase: gh<_i16.AuthUseCase>()));
    gh.lazySingleton<_i22.PerdasBloc>(
        () => _i22.PerdasBloc(gh<_i13.SetLoserUseCase>()));
    gh.lazySingleton<_i23.SetorBloc>(
        () => _i23.SetorBloc(gh<_i20.IGetSetoresUsecase>()));
    gh.lazySingleton<_i24.DetailsSensorBloc>(() => _i24.DetailsSensorBloc(
          gh<_i19.IGetSensor>(),
          gh<_i18.GetPerdasCountUseCase>(),
        ));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i25.FirebaseInjectableModule {}
