import 'package:flutter/material.dart';
import 'package:uab/screens/medibot.dart';


class dialogflutter extends StatefulWidget {
  const dialogflutter({Key? key}) : super(key: key);

  @override
  State<dialogflutter> createState() => _dialogflutterState();
}

class _dialogflutterState extends State<dialogflutter> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      showDialog(context: context, builder: (context){
        return Dialog(
          child: medibot(),
        );
      });
    }, child: Text('medibot'));
  }
}
