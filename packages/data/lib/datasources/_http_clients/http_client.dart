import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpClient extends http.BaseClient {
  HttpClient(
    this._inner, {
    required String baseUrl,
    Map<String, String> customHeaders = const {},
  })  : _baseUrl = baseUrl,
        _customHeaders = customHeaders;

  final http.Client _inner;
  final String _baseUrl;
  final Map<String, String> _customHeaders;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    var handler = request;
    if (!request.url.toString().startsWith(_baseUrl)) {
      final uri = Uri.parse(_baseUrl + request.url.toString());

      if (request is http.Request) {
        final newRequest = http.Request(request.method, uri)
          ..headers.addAll(request.headers)
          ..bodyBytes = request.bodyBytes;
        handler = newRequest;
      } else if (request is http.MultipartRequest) {
        final newRequest = http.MultipartRequest(request.method, uri)
          ..headers.addAll(request.headers)
          ..fields.addAll(request.fields)
          ..files.addAll(request.files);
        handler = newRequest;
      } else {
        final newRequest = http.Request(request.method, uri)..headers.addAll(request.headers);
        handler = newRequest;
      }
    }

    handler.headers['content-type'] = 'application/json; charset=utf-8';
    handler.headers['accept'] = 'application/json';

    handler.headers.addAll(_customHeaders);
    return _inner.send(handler);
  }

  @override
  Future<http.Response> get(Uri url, {Map<String, String>? headers}) {
    final uri = Uri.parse(_baseUrl + url.toString());
    return _inner.get(uri, headers: {..._customHeaders, ...?headers});
  }

  @override
  Future<http.Response> post(Uri url, {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    final uri = Uri.parse(_baseUrl + url.toString());
    return _inner.post(uri, headers: {..._customHeaders, ...?headers}, body: body, encoding: encoding);
  }

  @override
  Future<http.Response> put(Uri url, {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    final uri = Uri.parse(_baseUrl + url.toString());
    return _inner.put(uri, headers: {..._customHeaders, ...?headers}, body: body, encoding: encoding);
  }

  @override
  Future<http.Response> delete(Uri url, {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    final uri = Uri.parse(_baseUrl + url.toString());
    return _inner.delete(uri, headers: {..._customHeaders, ...?headers}, body: body, encoding: encoding);
  }

  @override
  Future<http.Response> patch(Uri url, {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    final uri = Uri.parse(_baseUrl + url.toString());
    return _inner.patch(uri, headers: {..._customHeaders, ...?headers}, body: body, encoding: encoding);
  }
}
