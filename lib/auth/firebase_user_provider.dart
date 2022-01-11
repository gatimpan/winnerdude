import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class WiFreeFirebaseUser {
  WiFreeFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

WiFreeFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<WiFreeFirebaseUser> wiFreeFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<WiFreeFirebaseUser>((user) => currentUser = WiFreeFirebaseUser(user));
