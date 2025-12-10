// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/auth/generate_otp/data/data_source/generate_otp_remote_datasource.dart'
    as _i1007;
import '../../features/auth/generate_otp/data/data_source/generate_otp_remote_datasource_impl.dart'
    as _i176;
import '../../features/auth/generate_otp/data/repo/generate_otp_repo.dart'
    as _i304;
import '../../features/auth/generate_otp/data/repo/generate_otp_repo_impl.dart'
    as _i112;
import '../../features/auth/resend_otp/data/data_source/resend_otp_remote_datasource.dart'
    as _i847;
import '../../features/auth/resend_otp/data/data_source/resend_otp_remote_datasource_impl.dart'
    as _i821;
import '../../features/auth/resend_otp/data/repo/resend_otp_repo.dart' as _i506;
import '../../features/auth/resend_otp/data/repo/resend_otp_repo_impl.dart'
    as _i934;
import '../../features/auth/verify_otp/data/data_source/verify_otp_remote_datasource.dart'
    as _i944;
import '../../features/auth/verify_otp/data/data_source/verify_otp_remote_datasource_impl.dart'
    as _i287;
import '../../features/auth/verify_otp/data/repo/verify_otp_repo.dart' as _i928;
import '../../features/auth/verify_otp/data/repo/verify_otp_repo_impl.dart'
    as _i719;
import '../../features/home/data/data_source/home_remote_datasource.dart'
    as _i156;
import '../../features/home/data/data_source/home_remote_datasource_impl.dart'
    as _i343;
import '../../features/home/data/repo/home_repo.dart' as _i429;
import '../../features/home/data/repo/home_repo_impl.dart' as _i1024;
import '../../features/save_job/data/data_source/save_job_remote_datasource.dart'
    as _i305;
import '../../features/save_job/data/data_source/save_job_remote_datasource_impl.dart'
    as _i670;
import '../../features/save_job/data/repo/save_job_repo.dart' as _i4;
import '../../features/save_job/data/repo/save_job_repo_impl.dart' as _i835;
import '../../features/saved_items/data/datasource/saved_items_remote_datasource.dart'
    as _i662;
import '../../features/saved_items/data/datasource/saved_items_remote_datasource_impl.dart'
    as _i239;
import '../../features/saved_items/data/repository/saved_items_repo.dart'
    as _i123;
import '../../features/saved_items/data/repository/saved_items_repo_impl.dart'
    as _i248;
import '../../features/search/data/data_source/search_remote_datasource.dart'
    as _i811;
import '../../features/search/data/data_source/search_remote_datasource_impl.dart'
    as _i924;
import '../../features/search/data/repo/search_repo.dart' as _i791;
import '../../features/search/data/repo/search_repo_impl.dart' as _i396;
import '../api/api_consumer.dart' as _i207;
import '../api/dio_consumer.dart' as _i82;
import 'register_module.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i82.DioConsumer>(() => registerModule.dioConsumer);
    gh.lazySingleton<_i429.HomeRepo>(() => _i1024.HomeRepoImpl());
    gh.lazySingleton<_i1007.GenerateOtpRemoteDataSource>(
      () => _i176.GenerateOtpRemoteDataSourceImpl(gh<_i82.DioConsumer>()),
    );
    gh.lazySingleton<_i156.HomeRemoteDataSource>(
      () => _i343.HomeRemoteDataSourceImpl(gh<_i82.DioConsumer>()),
    );
    gh.lazySingleton<_i123.SavedItemsRepo>(() => _i248.SavedItemsRepoImpl());
    gh.lazySingleton<_i811.SearchRemoteDataSource>(
      () => _i924.SearchRemoteDataSourceImpl(gh<_i82.DioConsumer>()),
    );
    gh.lazySingleton<_i928.VerifyOtpRepo>(() => _i719.VerifyOtpRepoImpl());
    gh.lazySingleton<_i305.SaveJobRemoteDataSource>(
      () => _i670.SaveJobRemoteDataSourceImpl(gh<_i82.DioConsumer>()),
    );
    gh.lazySingleton<_i4.SaveJobRepo>(() => _i835.SaveJobRepoImpl());
    gh.lazySingleton<_i662.SavedItemsRemoteDataSource>(
      () => _i239.SavedItemsRemoteDataSourceImpl(gh<_i82.DioConsumer>()),
    );
    gh.lazySingleton<_i304.GenerateOtpRepo>(() => _i112.GenerateOtpRepoImpl());
    gh.lazySingleton<_i847.ResendOtpRemoteDataSource>(
      () => _i821.ResendOtpRemoteDataSourceImpl(gh<_i82.DioConsumer>()),
    );
    gh.lazySingleton<_i791.SearchRepo>(() => _i396.SearchRepoImpl());
    gh.lazySingleton<_i506.ResendOtpRepo>(() => _i934.ResendOtpRepoImpl());
    gh.lazySingleton<_i944.VerifyOtpRemoteDataSource>(
      () => _i287.VerifyOtpRemoteDataSourceImpl(gh<_i82.DioConsumer>()),
    );
    gh.lazySingleton<_i207.ApiConsumer>(
      () => _i82.DioConsumer(dio: gh<_i361.Dio>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
