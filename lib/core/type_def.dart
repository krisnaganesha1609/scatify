import 'package:fpdart/fpdart.dart';
import 'package:scatify/core/core.dart';

/// Future Either which return either value or failure message
typedef FutureEither<T> = Future<Either<Failure, T>>;

/// Future Either Void which return void or failure message
typedef FutureEitherVoid = Future<Either<Failure, void>>;

/// Void Future
typedef FutureVoid = Future<void>;
