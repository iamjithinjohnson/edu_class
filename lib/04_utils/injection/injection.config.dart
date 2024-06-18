// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:edu_class/01_features/01_auth/03_view_model/auth_view_model.dart'
    as _i6;
import 'package:edu_class/01_features/01_auth/04_repository/auth_repository.dart'
    as _i5;
import 'package:edu_class/02_services/http_service.dart' as _i3;
import 'package:edu_class/02_services/storage_service.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

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
    gh.lazySingleton<_i3.HttpService>(() => _i3.HttpService());
    gh.lazySingleton<_i4.SecureStorage>(() => _i4.SecureStorage());
    gh.lazySingleton<_i5.IAuthService>(() => _i5.AuthRepository());
    gh.factory<_i6.AuthViewModel>(
        () => _i6.AuthViewModel(gh<_i5.IAuthService>()));
    return this;
  }
}
