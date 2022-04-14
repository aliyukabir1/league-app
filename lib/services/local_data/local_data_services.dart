import 'package:shared_preferences/shared_preferences.dart';

class LocalDataServices {
  late SharedPreferences pref;

  Future<void> saveKey(String key) async {
    pref = await SharedPreferences.getInstance();
    await pref.setString('api_key', key);
  }

  Future<String?> getKey() async {
    pref = await SharedPreferences.getInstance();
    return pref.getString('api_key');
  }
}
