import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uab/screens/bed.dart';

class bedportal extends StatefulWidget {
  const bedportal({Key? key}) : super(key: key);

  @override
  State<bedportal> createState() => _bedportalState();
}

class _bedportalState extends State<bedportal> {
  List<String> documentbedids = [];
  Future getDocumentIdbed() async {
    await FirebaseFirestore.instance.collection('bed').get().then((snapshot) => snapshot.docs.forEach((element) {
      print(element.reference);
      documentbedids.add(element.reference.id);

    }));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(future:getDocumentIdbed(),builder: (context,snapshot_Value){
        return ListView.builder(itemCount:documentbedids.length,itemBuilder: ( context,index){
          return Card(
            child:
            Column(
              children: [
                ListTile(title: bed(documentid: documentbedids[index]) ,tileColor: Colors.green),


              ],
            ),

          );
        });

      }),
    );
  }
}