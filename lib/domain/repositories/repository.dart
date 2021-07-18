import 'package:either_dart/either.dart';

import '../../core/errors/failures.dart';
import '../entities/posters_entity.dart';

abstract class Repository {
  Future<Either<Failure, List<PostersEntity>>> getPosters();
}
