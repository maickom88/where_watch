import '../../domain/usecases/get_posters.dart';
import '../build_repository/build_repository.dart';

GetPosters buildGetPosters() => GetPosters(repository: buildApiRepository());
