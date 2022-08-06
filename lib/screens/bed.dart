import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class bed extends StatelessWidget {
  const bed({Key? key, required this.documentid}) : super(key: key);
  final String documentid;

  @override
  Widget build(BuildContext context) {
    CollectionReference bed = FirebaseFirestore.instance.collection('bed');

    return FutureBuilder<DocumentSnapshot>(future: bed.doc(documentid).get(), builder: ((context, snapshot) {
      if(snapshot.connectionState == ConnectionState.done){
        Map<String, dynamic> data = snapshot.data!.data() as Map<String,dynamic>;
        return Text('${data['dptname']}'+'   '+'${data['number']}'+' ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),);
      }
      return Text('data loading..');
    }),);
  }
}
