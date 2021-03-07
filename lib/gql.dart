import 'package:graphql/client.dart';

class GQL {
  // final _authLink = AuthLink(
  //   getToken: () async => 'Bearer $YOUR_PERSONAL_ACCESS_TOKEN',
  // );

  // Link _link = _authLink.concat(_httpLink);

  // /// subscriptions must be split otherwise `HttpLink` will. swallow them
  // if (websocketEndpoint != null){
  //   final _wsLink = WebSocketLink(websockeEndpoint);
  //   _link = Link.split((request) => request.isSubscription, _wsLink, _link);
  // }

  static final GraphQLClient client = GraphQLClient(
    /// **NOTE** The default store is the InMemoryStore, which does NOT persist to disk
    cache: GraphQLCache(),
    link: HttpLink(
      'http://10.0.2.2:3000/graphql',
    ),
  );

  static const String createUser = r'''
    mutation CreateUser($uid: String!) {
      createUser(uid: $uid) {
        id
      }
    }
  ''';
}
