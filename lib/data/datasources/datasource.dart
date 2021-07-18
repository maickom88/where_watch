import 'package:where_watch_app/data/models/poster_model.dart';

abstract class Datasource {
  Future<List<PosterModel>> getPosters();
}
