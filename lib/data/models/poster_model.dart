import 'dart:convert';

import 'package:where_watch_app/core/enums/enums.dart';
import 'package:where_watch_app/domain/entities/posters_entity.dart';

class PosterModel implements PostersEntity {
  @override
  final String url;
  @override
  final String image;
  @override
  final PosterType typePoster;
  PosterModel({
    required this.url,
    required this.image,
    required this.typePoster,
  });

  Map<String, dynamic> toMap() {
    return {
      'url': url,
      'image': image,
      'type_poster': typePoster,
    };
  }

  factory PosterModel.fromMap(Map<String, dynamic> map) {
    var type = PosterType.movie;
    if (map['type_poster'] != null) {
      type = PosterType.serie;
    }
    return PosterModel(
      url: map['url'],
      image: map['image'],
      typePoster: type,
    );
  }

  String toJson() => json.encode(toMap());

  factory PosterModel.fromJson(String source) =>
      PosterModel.fromMap(json.decode(source));
}
