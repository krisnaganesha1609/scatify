import 'package:flutter/material.dart';

///
extension XState on State {
  ///
  // ignore: inference_failure_on_function_return_type
  void safeRebuild(Function() fn) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      fn();
    });
  }
}
