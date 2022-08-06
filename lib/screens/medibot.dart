import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';

import 'Botmessages.dart';

class medibot extends StatefulWidget {
  const medibot({Key? key}) : super(key: key);

  @override
  State<medibot> createState() => _medibotState();
}

class _medibotState extends State<medibot> {
  late DialogFlowtter dialogFlowtter;
  final TextEditingController _controller = TextEditingController();

  List<Map<String,dynamic>>  messages = [];

  @override
  void initState() {
    DialogFlowtter.fromFile().then((instance) => dialogFlowtter=instance);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
            return Column(
              children: [
                Expanded(child: Botmessages(messages: messages),

                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 1,
                      vertical: 8
                  ),
                  color: Colors.white60,
                  child: Row(
                    children: [
                      Expanded(child: TextField(
                        controller: _controller,
                        style: TextStyle(color: Colors.pinkAccent),
                      )),
                      IconButton(onPressed: () {
                        sendbotmessage(_controller.text);
                        _controller.clear();
                      }, icon: Icon(Icons.send))
                    ],
                  ),
                )
              ],

            );
          // });
        }

  sendbotmessage(String text) async {
    if(text.isEmpty){
      print('message is empty');
    }
    else{
      setState(() {
        addmessage(Message(
          text: DialogText(
            text: [text]
          )
        ),true);

      });
      DetectIntentResponse response = await dialogFlowtter.detectIntent(queryInput: QueryInput(text: TextInput(text: text)));
      if(response.message == null) return;
      setState(() {
        addmessage(response.message!);
      });
    }
  }
  addmessage(Message message,[bool isuserdefinedmsg = false]) {
    messages.add({
      'message':message,
      'isuserdefinedmessage': isuserdefinedmsg
    });
  }
}

