
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class blood_data extends StatelessWidget {
  const blood_data({Key? key, required this.documentid}) : super(key: key);
  final String documentid;

  @override
  Widget build(BuildContext context) {
    CollectionReference patients = FirebaseFirestore.instance.collection('blood');

    return FutureBuilder<DocumentSnapshot>(future: patients.doc(documentid).get(), builder: ((context, snapshot) {
      if(snapshot.connectionState == ConnectionState.done){
        Map<String, dynamic> data = snapshot.data!.data() as Map<String,dynamic>;
        return Text('${data['quantity']}'+'   '+'${data['type']}'+' ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),);
      }
      return Text('data loading..');
    }),);
  }
}
