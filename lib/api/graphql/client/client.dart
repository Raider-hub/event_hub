import 'package:event_hub/api/graphql/client/http_auth_link.dart';
import 'package:event_hub/widgets/constants.dart';
import 'package:ferry/ferry.dart';

import 'package:nb_utils/nb_utils.dart';

Future<Client> initClient() async {
  final link = HttpAuthLink(
    endpoint: 'https://event-hub-backend.herokuapp.com/graphql',
    getAuthToken: () => getStringAsync(apitoken),
  );
  final client = Client(
    link: link,
  );
  return client;
}
