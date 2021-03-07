import 'package:firebase_auth/firebase_auth.dart';
import 'package:graphql/client.dart';
import 'package:petcode_app/gql.dart';

class AuthService {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<bool> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      final authResult = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      final MutationOptions options = MutationOptions(
        document: gql(GQL.createUser),
        variables: <String, dynamic>{
          'uid': authResult.user.uid,
        },
      );

      final QueryResult result = await GQL.client.mutate(options);

      if (result.hasException) {
        print(result.exception.toString());
        return false;
      }

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
