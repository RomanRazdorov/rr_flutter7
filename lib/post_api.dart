import 'package:http/http.dart' as http;
import 'package:rr_flutter7/app_env.dart';

Future<http.Response> getPostsList() async {
  return await http.get(Uri.parse(AppEnv.postUri));
}

void loadPostsList() async {
  await Future.delayed(const Duration(seconds: 3));
  getPostsList().then((response) {
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print(response.statusCode);
    }
  });
}
