import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class LocalKeysDatasource {
  LocalKeysDatasource(this.prefs);

  static const String _jwtKey = 'jwt_token';
  final SharedPreferences prefs;

  Future<void> saveToken(String token) async {
    await prefs.setString(_jwtKey, token);
  }

  Future<String?> getToken() async {
    return prefs.getString(_jwtKey);
  }

  Future<void> removeToken() async {
    await prefs.remove(_jwtKey);
  }
}
