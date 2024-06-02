import 'package:http/http.dart' as http;

class ApiClient extends http.BaseClient {
  ApiClient(this._inner, this._customHeaders);

  final http.Client _inner;

  final Map<String, String> _customHeaders;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['content-type'] = 'application/json; charset=utf-8';
    request.headers['accept'] = 'application/json';

    request.headers.addAll(_customHeaders);

    return _inner.send(request);
  }
}
