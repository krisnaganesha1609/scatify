/// App-Related Strings
class AppStrings {
  /// App Name
  static const appName = 'SCAtify';
}

/// Failure/Error-Related Strings
class FailureMessage {
  /// on GET Method Failure
  static const getRequestMessage = 'GET REQUEST FAILED';

  /// on POST Method Failure
  static const postRequestMessage = 'POST REQUEST FAILED';

  /// on PUT Method Failure
  static const putRequestMessage = 'PUT REQUEST FAILED';

  /// on DELETE Method Failure
  static const deleteRequestMessage = 'DELETE REQUEST FAILED';

  /// on JSON PARSE Failure
  static const jsonParsingFailed = 'FAILED TO PARSE JSON RESPONSE';

  /// on AUTH TOKEN IS EMPTY
  static const authTokenEmpty = 'AUTH TOKEN EMPTY';

  /// on PARSING JSON DATA Failure
  static const failedToParseJson = 'Failed to Parse JSON Data';
}

/// Snackbar/Alert-Related Strings
class SnackBarMessages {
  ///
  static const musicLoadSuccess = 'Music Loaded Successfully';

  ///
  static const musicLoadFailed = 'Failed To Load Music';
}

/// LogLabel-Related Strings
class LogLabel {
  /// AUTH LOG LABEL
  static const auth = 'AUTH';

  /// GET LOG LABEL
  static const httpGet = 'HTTP/GET';

  /// POST LOG LABEL
  static const httpPost = 'HTTP/POST';

  /// PUT LOG LABEL
  static const httpPut = 'HTTP/PUT';

  /// DELETE LOG LABEL
  static const httpDelete = 'HTTP/DELETE';

  /// SHAREDPREFERENCES LOG LABEL
  static const sharedPrefs = 'SHARED_PREFERENCES';

  /// HIVEFLUTTER LOG LABEL
  static const hiveFlutter = 'HIVE_FLUTTER';
}
