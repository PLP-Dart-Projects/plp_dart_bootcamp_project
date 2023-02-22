// 1. ADDD
// 2. delete
// 3. update
// 4. fetch
import 'package:cloud_firestore/cloud_firestore.dart';

class UserFunctions {
  // add function

  static createUser(String firstName, String lastName, String phoneNumber,
      String emailAddress) async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    // await users.get().then((value) => print(value.docs.first.data()));
    users.add({
      "first_name": firstName,
      "last_name": lastName,
      "phone_number": phoneNumber,
      "email_address": emailAddress,
    });
  }
}
