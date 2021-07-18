import 'package:where_watch_app/data/repositories/repository.dart';
import 'package:where_watch_app/factories/build_datasource/build_datasource.dart';

ApiRepository buildApiRepository() => ApiRepository(datasource: buildApi());
