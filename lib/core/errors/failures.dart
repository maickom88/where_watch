class Failure implements Exception {
  String get message => 'Failure error';
}

class ServerError implements Failure {
  @override
  String get message => 'Unexpected server error';
}
