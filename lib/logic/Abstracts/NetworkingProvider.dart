
import 'package:http/http.dart' as http;
import 'dart:convert';

enum HTTPMethod { httpGet, httpPost, httpPut, httpDelete }


class WebRequest<T extends dynamic> {
  HTTPMethod method;
  Map<String, String> headers = {};
  String url;
  String body;

  void prepareRequest() {
    print("error");
  }

 

  T castDataToResponse(dynamic jsonData) {
    return null;
  }

  Future<T> fetchResponse(NetworkingProvider networkingProvider) async {
    var networkResponse = await networkingProvider.fetchRequest(this);
      var decodedData = json.decode(networkResponse.body);
      var respo = castDataToResponse(decodedData);
      return respo;
  }

  Error isRequestValid() {
    return null;
  }
}

abstract class NetworkingProvider {
  Future<http.Response> fetchRequest(WebRequest request);
}
abstract class BaseResponseType {
  Error isResponseValid();
}
