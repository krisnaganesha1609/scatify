import 'package:scatify/res/paths.dart';

/// API ENDPOINTS
class Endpoints {
  static const _base = BasePaths.baseRestAPI;
  static const _baseAuth = BasePaths.baseAuthAPi;

  /// Get User Profiles
  static const me = '$_base/me';

  /// First Step to get Authorization Code
  static const authorize = '$_baseAuth/authorize?';

  /// Second Step to get Authorization Code
  static const getToken = '$_baseAuth/api/token';
}
