import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
  //collection reference
  final CollectionReference users = Firestore.instance.collection('users');

  Future updateUserData(String name, String gender, String status) async {
    return await users.document(uid).setData({
      'name': name,
      'gender': gender,
      'status': status,
    });
  }

  Future updateName(String name) async {
    return await users.document(uid).setData({
      'name': name,
    });
  }

  Future updateGender(String gender) async {
    return await users.document(uid).setData({
      'gender': gender,
    });
  }

  Future updateStatus(String status) async {
    return await users.document(uid).setData({
      'status': status,
    });
  }

  Stream<QuerySnapshot> get user {
    return users.snapshots();
  }
}
