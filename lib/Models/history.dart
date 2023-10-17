import 'package:firebase_database/firebase_database.dart';

class History {
  late String paymentMethod;
  late String createdAt;
  late String status;
  late String fares;
  late String dropOff;
  late String pickup;

  History({
    required this.paymentMethod,
    required this.createdAt,
    required this.status,
    required this.fares,
    required this.dropOff,
    required this.pickup,
  });

  History.fromSnapshot(DataSnapshot snapshot) {
    final data = snapshot.value as Map<dynamic, dynamic>?;

    paymentMethod = data?["payment_method"] ?? "";
    createdAt = data?["created_at"] ?? "";
    status = data?["status"] ?? "";
    fares = data?["fares"] ?? "";
    dropOff = data?["dropoff_address"] ?? "";
    pickup = data?["pickup_address"] ?? "";
  }
}
