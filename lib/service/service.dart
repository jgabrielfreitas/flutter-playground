import 'package:http/http.dart';

class ServiceHelper {
  String baseUrl;
  var client = new Client();

}

main() async {
  var client = new Client();
  client.get("http://127.0.0.1:5000/contacts")
        .then((response) => print(response.body))
        .whenComplete(client.close);
}