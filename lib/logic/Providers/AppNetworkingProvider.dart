import 'package:http/http.dart' as http;
import 'package:sample_match/logic/Abstracts/NetworkingProvider.dart';

class AppNetworkingProvider extends NetworkingProvider {
  String serverBaseUrl;

  Future<http.Response> fetchRequest(WebRequest request) async {
    request.prepareRequest();
    request.url = request.url;
    request.headers.addAll({
      'Content-Type': 'application/json; charset=utf-8',
      'Accept-Encoding': 'gzip',
    });
    print("${request.method} - ${request.url}");
    print("${request.body}");
    if (request.method == HTTPMethod.httpGet) {
      return http.get(request.url, headers: request.headers);
    } else {
      print("invalid request");
    }
    return null;
  }

  
}