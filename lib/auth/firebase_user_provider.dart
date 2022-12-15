import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FEXCloudAPIFirebaseUser {
  FEXCloudAPIFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

FEXCloudAPIFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FEXCloudAPIFirebaseUser> fEXCloudAPIFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FEXCloudAPIFirebaseUser>(
      (user) {
        currentUser = FEXCloudAPIFirebaseUser(user);
        return currentUser!;
      },
    );
