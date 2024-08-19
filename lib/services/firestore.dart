import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:mohammed_s_application1/presentation/upload_page/upload_page.dart';

FirebaseDatabase database = FirebaseDatabase.instance;

class FirestoreService {
  //get collection of upload

  final CollectionReference uploads =
      FirebaseFirestore.instance.collection('uploaddata');

//creat : add a new note
  Future<void> addData(
    String name,
    String jobtype,
    String salary,
    int number,
    String place,
    String timeschedule,
  ) {
    return uploads.add({
      'name': name,
      'jobtype': jobtype,
      'salary': salary,
      'number': number,
      'place': place,
      'timestamp': Timestamp.now(),
      'image': imageUrl,
      'timeSchedule': timeschedule,
      'likes': [],
    });
  }

  //read:get notes frome database
  Stream<QuerySnapshot> getDataStream() {
    final uploadStream =
        uploads.orderBy('timestamp', descending: true).snapshots();
    return uploadStream;
  }
}
