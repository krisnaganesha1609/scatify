import 'dart:convert';
import 'dart:math';

/// Get Random Strings
String getRandString(int len) {
  final random = Random.secure();
  final values = List<int>.generate(len, (i) => random.nextInt(255));
  return base64UrlEncode(values);
}
