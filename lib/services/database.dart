import 'package:firedart/firedart.dart';

class DatabaseMethods {
  getByUsername(String username) async {
    return await Firestore.instance
        .collection("users")
        .where("firstName", isEqualTo: username)
        .get();
  }

  getallUsername() async {
    return await Firestore.instance.collection("users").get();
  }

  uploadUserInfo(userMap) {
    Firestore.instance.collection("users").add(userMap);
  }
}
