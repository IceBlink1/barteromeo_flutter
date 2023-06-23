// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import 'authentication_repository.dart' as _i5;
import 'di/data_auth_module.dart' as _i6;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dataAuthModule = _$DataAuthModule();
  gh.singletonAsync<_i3.GoogleSignIn>(() => dataAuthModule.googleSignIn);
  gh.factoryAsync<_i4.SharedPreferences>(() => dataAuthModule.prefs);
  gh.factoryAsync<_i5.AuthenticationRepository>(() async =>
      _i5.AuthenticationRepository.from(await gh.getAsync<_i3.GoogleSignIn>()));
  return getIt;
}

class _$DataAuthModule extends _i6.DataAuthModule {}
