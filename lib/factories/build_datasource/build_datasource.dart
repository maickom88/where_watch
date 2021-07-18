import 'package:http/http.dart';
import 'package:where_watch_app/external/api.dart';

final httpClient = Client();
Api buildApi() => Api(httpClient: httpClient);
