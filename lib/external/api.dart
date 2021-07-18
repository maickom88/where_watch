import 'dart:convert';

import 'package:http/http.dart';
import 'package:where_watch_app/core/constants/url_constants.dart';
import 'package:where_watch_app/core/errors/failures.dart';

import '../data/datasources/datasource.dart';
import '../data/models/poster_model.dart';

class Api implements Datasource {
  final Client httpClient;
  Api({
    required this.httpClient,
  });
  @override
  Future<List<PosterModel>> getPosters() async {
    try {
      final response = await httpClient.post(
        Uri.parse(UrlConst.postersEndpoint),
        body: '[]',
      );
      if (response.statusCode == 200) {
        final body = json.decode(response.body) as List;
        final posters =
            body.map((poster) => PosterModel.fromMap(poster)).toList();
        return posters;
      }
      throw Exception();
    } catch (e) {
      throw ServerError();
    }
  }
}
