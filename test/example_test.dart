import 'harness/app.dart';

Future main() async {
  final harness = Harness()..install();

  test("GET /appname returns 200 {'name': 'Kevins Personal Knowledge Management'}", () async {
    expectResponse(await harness.agent.get("/appname"), 200, body: {"name": "Kevin's Personal Knowledge Management"});
  });
}
