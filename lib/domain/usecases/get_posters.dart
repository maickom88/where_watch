import 'package:either_dart/src/either.dart';

import '../../core/errors/failures.dart';
import '../../core/usecases/usecase.dart';
import '../entities/posters_entity.dart';
import '../repositories/repository.dart';

class GetPosters implements Usecase<NoParams, List<PostersEntity>> {
  final Repository repository;
  GetPosters({
    required this.repository,
  });
  @override
  Future<Either<Failure, List<PostersEntity>>> call(NoParams input) async {
    return await repository.getPosters();
  }
}
