import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:mohammed_s_application1/services/firestore.dart';
import 'package:mohammed_s_application1/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application1/widgets/custom_icon_button.dart';
import 'package:firebase_core/firebase_core.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatefulWidget {
  const HomeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  State<HomeItemWidget> createState() => _HomeItemWidgetState();
}

FirebaseDatabase database = FirebaseDatabase.instance;
final FirestoreService firestoreService = FirestoreService();

class _HomeItemWidgetState extends State<HomeItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      child: StreamBuilder<QuerySnapshot>(
        stream: firestoreService.getDataStream(),
        builder: (context, snapshot) {
          // if we have data get all the doc
          if (snapshot.hasData) {
            List Datalist = snapshot.data!.docs;
            //display as  a list
            return ListView.builder(
              itemCount: Datalist.length,
              itemBuilder: (context, index) {
                //get each individual doc

                DocumentSnapshot document = Datalist[index];
                String docID = document.id;

                //get note frome each doc
                Map<String, dynamic> data =
                    document.data() as Map<String, dynamic>;
                String name = data['name'];

                // diaplay as a list tile
                return ListTile(
                  title: Text(
                    name,
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                );
              },
            );
            // there is no data return
          } else {
            return const Text("no data");
          }
        },
      ),
    );
  }
}
