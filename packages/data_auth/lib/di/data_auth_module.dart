import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class DataAuthModule {
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @singleton
  Future<GoogleSignIn> get googleSignIn => Future.value(GoogleSignIn(
        scopes: [
          'email',
          'https://www.googleapis.com/auth/contacts.readonly',
        ],
      ));
}
