import 'package:flutter/material.dart';

import 'package:uab/screens/Responsivescreen.dart';
import 'package:uab/screens/conatact.dart';
import 'package:uab/screens/login_email.dart';

class CenterBar extends StatefulWidget {
  const CenterBar({Key? key, required this.screenSize}) : super(key: key);

  final Size screenSize;
  @override
  State<CenterBar> createState() => _CenterBarState();
}

class _CenterBarState extends State<CenterBar> {
  List _ismoving = [false, false, false, false];

  List<Widget> Elements_in_row = [];

  List<String> values = ['Home', 'Symptoms', 'Patient-Portal', 'Contact-us'];

  List<IconData> icons = [
    Icons.location_on,
    Icons.date_range,
    Icons.people,
    Icons.wb_sunny
  ];

  List<Widget> generating_Elements_in_row() {
    Elements_in_row.clear();
    for (int i = 0; i < values.length; i++) {
      Widget element_Tile = InkWell(
        splashColor: Colors.transparent,
        hoverColor: Colors.blue,
        onHover: (value) {
          setState(() {
            value ? _ismoving[i] = true : _ismoving[i] = false;
          });
        },
        onTap: () {
          if (i == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => EmailPasswordLogin(),
                  maintainState: false),
            );
          }
          if (i == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => contact(), maintainState: false),
            );
          }
        },
        child: Text(
          values[i],
          style: TextStyle(
            color: _ismoving[i] ? Colors.blueGrey[900] : Colors.blueGrey,
          ),
        ),
      );
      Widget spacer = SizedBox(
        height: widget.screenSize.height / 20,
        child: VerticalDivider(
          width: 1,
          color: Colors.blueGrey[100],
          thickness: 1,
        ),
      );
      Elements_in_row.add(element_Tile);
      if (i < values.length - 1) {
        Elements_in_row.add(spacer);
      }
    }
    return Elements_in_row;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(
          top: widget.screenSize.height * 0.60,
          left: ResponsiveWidget.isSmallScreen(context)
              ? widget.screenSize.width / 12
              : widget.screenSize.width / 5,
          right: ResponsiveWidget.isSmallScreen(context)
              ? widget.screenSize.width / 12
              : widget.screenSize.width / 5,
        ),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.only(
              top: this.widget.screenSize.height / 50,
              bottom: this.widget.screenSize.height / 50,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: generating_Elements_in_row(),
            ),
          ),
        ),
      ),
    );
  }
}
