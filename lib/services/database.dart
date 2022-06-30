import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Stream<QuerySnapshot> getChats() {
    return FirebaseFirestore.instance
        .collection("chatRoom")
        .doc("Ashley")
        .collection("chats")
        .orderBy('time')
        .snapshots();
  }

  Future<void> addMessage(chatMessageData) {
    print(chatMessageData);
    return FirebaseFirestore.instance
        .collection("chatRoom")
        .doc("Ashley")
        .collection("chats")
        .add(chatMessageData)
        .then((value) => print(value))
        .catchError((e) {
      print(e.toString());
    });
  }

  getUserChats(String itIsMyName) async {
    return await FirebaseFirestore.instance
        .collection("chatRoom")
        .doc("'users', arrayContains: itIsMyName")
        .snapshots();
  }
}
