import 'package:gql_exec/gql_exec.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:gql_link/gql_link.dart';
import 'package:gql_transform_link/gql_transform_link.dart';

class HttpAuthLink extends Link {
  late Link link;
  final String? Function() getAuthToken;

  HttpAuthLink({required String endpoint, required this.getAuthToken}) {
    link = Link.from([
      TransformLink(requestTransformer: transformRequest),
      HttpLink(endpoint),
    ]);
  }

  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    yield* link.request(request, forward);
  }

  Request transformRequest(Request request) {
    final authToken = getAuthToken();
    if (authToken == null) {
      return request;
    }

    return request.updateContextEntry<HttpLinkHeaders>(
      (headers) => HttpLinkHeaders(
        headers: <String, String>{
          ...headers?.headers ?? <String, String>{},
          "Authorization": authToken,
        },
      ),
    );
  }
}
