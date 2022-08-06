import 'package:flutter/material.dart';

class contact extends StatelessWidget {
  const contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Column(
            children: [
              SizedBox(
                height: 400,
                width: 600,
                child: Image.asset('images/map.jpg'),
              ),
              Text('contact: 2054704060'),
              Text('Email: prashant2@uab.edu'),
            ],
          )
        ],
      ),
    );
  }
}
