import 'package:either_dart/src/either.dart';

import '../../core/errors/failures.dart';
import '../../domain/entities/posters_entity.dart';
import '../../domain/repositories/repository.dart';
import '../datasources/datasource.dart';

class ApiRepository implements Repository {
  final Datasource datasource;
  ApiRepository({
    required this.datasource,
  });
  @override
  Future<Either<Failure, List<PostersEntity>>> getPosters() async {
    try {
      return Right(await datasource.getPosters());
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
