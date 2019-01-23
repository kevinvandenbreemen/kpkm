import 'dart:async';
import 'package:kpkm/kpkm.dart';

class AppName extends Serializable {

  String name;

  AppName(this.name);

  @override
  Map<String, dynamic> asMap() {
    return {
      'name': name
    };
  }

  @override
  void readFromMap(Map<String, dynamic> requestBody) {
    name = requestBody['name'] as String;
  }

}

class AppNameController extends ResourceController {

  static const String app_name = "Kevin's Personal Knowledge Management";

  @Operation.get()
  Future<Response> getSoftwareName() async {
    return Response.ok(AppName(app_name));
  } 

}