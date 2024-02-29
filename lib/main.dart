import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scatify/app.dart';
import 'package:scatify/bootstrap.dart';

void main() async {
  runApp(
    UncontrolledProviderScope(
      container: await bootstrap(),
      child: const ScatifyApp(),
    ),
  );
}
