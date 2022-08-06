import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uab/screens/blood.dart';


class bloodportal extends StatefulWidget {
  const bloodportal({Key? key}) : super(key: key);

  @override
  State<bloodportal> createState() => _bloodportalState();
}

class _bloodportalState extends State<bloodportal> {
  List<String> documentbloodids = [];


  Future getDocumentIdblood() async {
    await FirebaseFirestore.instance.collection('blood').get().then((snapshot) => snapshot.docs.forEach((element) {
      print(element.reference);
      documentbloodids.add(element.reference.id);

    }));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(future:getDocumentIdblood(),builder: (context,snapshot_Value){
        return ListView.builder(itemCount:documentbloodids.length,itemBuilder: ( context,index){
          return Card(
            child:
            Column(
              children: [
                ListTile(title: blood_data(documentid: documentbloodids[index]) ,tileColor: Colors.green),


              ],
            ),

          );
        });

      }),
    );
  }
}