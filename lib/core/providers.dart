import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scatify/core/core.dart';
import 'package:scatify/features/auth/application/auth_controller.dart';
import 'package:scatify/features/auth/domain/entities/access_token_entity.dart';
import 'package:scatify/utils/theme_provider.dart';

part 'providers.g.dart';

@riverpod

///
AccessTokenEntity? accessToken(AccessTokenRef ref) {
  return ref.read(authControllerProvider).asData?.value;
}

/// Initializer
FutureVoid initializeProviders(ProviderContainer container) async {
  /// Core
  container
    ..read(accessTokenProvider)
    ..read(themeProvider);
  final dir = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(dir.path);
}
