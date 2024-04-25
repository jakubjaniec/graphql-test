// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:ferry/ferry.dart' as _i7;
import 'package:flutter/material.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/countries/data_source/countries_api_data_source.dart' as _i9;
import '../data/countries/service/countries_service_impl.dart' as _i11;
import '../domain/countries/service/countries_service.dart' as _i10;
import '../domain/countries/use_case/get_countries_use_case.dart' as _i12;
import '../domain/env/get_api_url_use_case.dart' as _i5;
import '../example/data/example_feature/data_source/example_feature_api_data_source.dart'
    as _i14;
import '../example/data/example_feature/mapper/example_model_dto_to_example_model_mapper.dart'
    as _i3;
import '../example/data/example_feature/service/example_service_impl.dart'
    as _i16;
import '../example/domain/example_feature/service/example_service.dart' as _i15;
import '../example/domain/example_feature/usecase/get_example_feature_data.dart'
    as _i17;
import '../example/presentation/page/example_page/cubit/example_cubit.dart'
    as _i18;
import '../presentation/page/initial_page/cubit/initial_page_cubit.dart'
    as _i13;
import 'dio_injectable/dio_injectable.dart' as _i22;
import 'ferry/ferry_injectable.dart' as _i21;
import 'flutter_secure_storage_injectable/flutter_secure_storage_injectable.dart'
    as _i20;
import 'navigator_key_injectable.dart' as _i19;

const String _dev = 'dev';
const String _prod = 'prod';
const String _staging = 'staging';
const String _test = 'test';

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final navigatorKeyModule = _$NavigatorKeyModule();
  final flutterSecureStorageModule = _$FlutterSecureStorageModule();
  final ferryModule = _$FerryModule();
  final dioModule = _$DioModule();
  gh.factory<_i3.ExampleModelDtoToExampleModelMapper>(
      () => _i3.ExampleModelDtoToExampleModelMapper());
  gh.singleton<_i4.GlobalKey<_i4.NavigatorState>>(
      () => navigatorKeyModule.navigatorKey());
  gh.factory<_i5.GetApiUrlUseCase>(
    () => _i5.DevGetApiUrlUseCase(),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i6.FlutterSecureStorage>(
    () => flutterSecureStorageModule.flutterSecureStorage,
    registerFor: {
      _dev,
      _prod,
      _staging,
    },
  );
  gh.lazySingleton<_i7.Client>(
    () => ferryModule.ferry,
    registerFor: {
      _dev,
      _prod,
      _staging,
    },
  );
  gh.factory<_i5.GetApiUrlUseCase>(
    () => _i5.StagingGetApiUrlUseCase(),
    registerFor: {_staging},
  );
  gh.singleton<_i8.Dio>(
    () => dioModule.testDio(),
    registerFor: {_test},
  );
  gh.singleton<_i6.FlutterSecureStorage>(
    () => flutterSecureStorageModule.testSecureStorage,
    registerFor: {_test},
  );
  gh.lazySingleton<_i8.Dio>(
    () => dioModule.dio(gh<_i5.GetApiUrlUseCase>()),
    registerFor: {
      _dev,
      _prod,
      _staging,
    },
  );
  gh.lazySingleton<_i9.CountriesApiDataSource>(
      () => _i9.CountriesApiDataSourceImpl(gh<_i7.Client>()));
  gh.factory<_i5.GetApiUrlUseCase>(
    () => _i5.ProdGetApiUrlUseCase(),
    registerFor: {_prod},
  );
  gh.lazySingleton<_i10.CountriesService>(
      () => _i11.CountriesServiceImpl(gh<_i9.CountriesApiDataSource>()));
  gh.factory<_i12.GetCountriesUseCase>(
      () => _i12.GetCountriesUseCase(gh<_i10.CountriesService>()));
  gh.factory<_i13.InitialPageCubit>(
      () => _i13.InitialPageCubit(gh<_i12.GetCountriesUseCase>()));
  gh.factory<_i14.TaskDataSource>(() => _i14.TaskDataSource(gh<_i8.Dio>()));
  gh.factory<_i15.ExampleService>(() => _i16.ExampleServiceImpl(
        gh<_i14.TaskDataSource>(),
        gh<_i3.ExampleModelDtoToExampleModelMapper>(),
      ));
  gh.factory<_i17.GetExampleFeatureDataUseCase>(
      () => _i17.GetExampleFeatureDataUseCase(gh<_i15.ExampleService>()));
  gh.factory<_i18.ExampleCubit>(
      () => _i18.ExampleCubit(gh<_i17.GetExampleFeatureDataUseCase>()));
  return getIt;
}

class _$NavigatorKeyModule extends _i19.NavigatorKeyModule {}

class _$FlutterSecureStorageModule extends _i20.FlutterSecureStorageModule {}

class _$FerryModule extends _i21.FerryModule {}

class _$DioModule extends _i22.DioModule {}
