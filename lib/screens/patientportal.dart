import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:uab/screens/readuserdata.dart';

class patientdata extends StatefulWidget {
  const patientdata({Key? key}) : super(key: key);

  @override
  State<patientdata> createState() => _patientdataState();
}

class _patientdataState extends State<patientdata> {
  late Future data;
  List<String> documentids = [];

  Future getDocumentId() async {
    await FirebaseFirestore.instance
        .collection('patients')
        .get()
        .then((snapshot) => snapshot.docs.forEach((element) {
              print(element.reference);
              documentids.add(element.reference.id);
            }));
  }

  @override
  Widget build(BuildContext context) {
    data = getDocumentId();
    return Scaffold(
      body: FutureBuilder(
          future: data,
          builder: (context, snapshot_Value) {
            return ListView.builder(
                itemCount: documentids.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        ListTile(
                            title:
                                readpatientdata(documentid: documentids[index]),
                            tileColor: Colors.green),
                      ],
                    ),
                  );
                });
          }),
    );
  }
}
