import 'package:shared_preferences/shared_preferences.dart';

import 'key_value_storage.dart';

class KeyValueStorageServiceImpl extends KeyValueStorageService {
  Future<SharedPreferences> getSharedPreferences() async {
    return await SharedPreferences.getInstance();
  }

  @override
  Future<T?> getValue<T>(String key) async {
    final pref = await getSharedPreferences();

    switch (T) {
      case int:
        return pref.getInt(key) as T?;
      case String:
        return pref.getString(key) as T?;
      default:
        throw UnimplementedError(
            'Get not implemented  for type ${T.runtimeType}');
    }
  }

  @override
  Future<bool> removeKey(String key) async {
    final pref = await getSharedPreferences();
    return await pref.remove(key);
  }

  @override
  Future<void> setKeyValue<T>(String key, T value) async {
    final pref = await getSharedPreferences();

    switch (T) {
      case int:
        pref.setInt(key, value as int);
        break;
      case String:
        pref.setString(key, value as String);
        break;
      default:
        throw UnimplementedError(
            'Set not implemented  for type ${T.runtimeType}');
    }
  }
}
