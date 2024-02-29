import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:scatify/core/core.dart';

/// Manage token in device storage
class AccessTokenLocalDataSource {
  /// Default constructor for [AccessTokenLocalDataSource]
  AccessTokenLocalDataSource(this._prefs);

  final FlutterSecureStorage _prefs;

  static const _key = 'access_token';

  /// get the token from the device storage
  FutureEither<String?> get() async {
    return right(await _prefs.read(key: _key));
  }

  /// Store token in device storage
  Future<void> store(String token) async {
    return _prefs.write(key: _key, value: token);
  }

  /// Remove token from device storage
  Future<void> remove() async {
    return _prefs.delete(key: _key);
  }
}
