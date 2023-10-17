import 'package:firebase_database/firebase_database.dart';

class Users {
  late String id;
  late String email;
  late String name;
  late String phone;

  Users({
    required this.id,
    required this.email,
    required this.name,
    required this.phone,
  });

  Users.fromSnapshot(DataSnapshot dataSnapshot)
      : id = dataSnapshot.key!,
        email = (dataSnapshot.value as Map<String, dynamic>?)?["email"] as String? ?? "",
        name = (dataSnapshot.value as Map<String, dynamic>?)?["name"] as String? ?? "",
        phone = (dataSnapshot.value as Map<String, dynamic>?)?["phone"] as String? ?? "";
}
