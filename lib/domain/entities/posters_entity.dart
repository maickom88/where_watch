import 'package:where_watch_app/core/enums/enums.dart';

class PostersEntity {
  final String url;
  final String image;
  final PosterType typePoster;
  PostersEntity({
    required this.url,
    required this.image,
    required this.typePoster,
  });
}
