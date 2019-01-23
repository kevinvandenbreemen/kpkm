import 'package:aqueduct/aqueduct.dart';

/// Basic post model.  We want to persist these to a database
class Post extends Serializable {

  int id;

  String content;

  @override
  Map<String, dynamic> asMap() {
    return {
      'id': id,
      'content': content
    };
  }

  @override
  void readFromMap(Map<String, dynamic> requestBody) {
    id = requestBody['id'] as int;
    content = requestBody['content'] as String;
  }

}