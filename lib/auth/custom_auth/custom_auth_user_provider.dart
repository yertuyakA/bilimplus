import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class BilimPlusAuthUser {
  BilimPlusAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<BilimPlusAuthUser> bilimPlusAuthUserSubject =
    BehaviorSubject.seeded(BilimPlusAuthUser(loggedIn: false));
Stream<BilimPlusAuthUser> bilimPlusAuthUserStream() => bilimPlusAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
