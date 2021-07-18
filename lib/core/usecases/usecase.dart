import 'package:either_dart/either.dart';
import 'package:where_watch_app/core/errors/failures.dart';

abstract class Usecase<Input, Output> {
  Future<Either<Failure, Output>> call(Input input);
}

class NoParams {}
