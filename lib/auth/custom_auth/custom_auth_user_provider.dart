import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class TTeamsAuthUser {
  TTeamsAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<TTeamsAuthUser> tTeamsAuthUserSubject =
    BehaviorSubject.seeded(TTeamsAuthUser(loggedIn: false));
Stream<TTeamsAuthUser> tTeamsAuthUserStream() =>
    tTeamsAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
