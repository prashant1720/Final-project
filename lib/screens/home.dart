// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uab/screens/FeatureCards.dart';
import 'package:uab/screens/department.dart';
import 'package:uab/screens/dialogflutter.dart';

import 'CenterBar.dart';

// ignore: camel_case_types
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Text(
                          "UAB-HOSPITAL",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      // child: Container(
                      child: SizedBox(
                        height: screenSize.height * 0.65,
                        width: screenSize.width * 0.30,
                        child: Image.asset(
                          'assets/images/doctor.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      CenterBar(screenSize: screenSize),
                      FeatureCard(screenSize: screenSize),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(28.0, 50, 28, 50),
                        child: Container(
                          child: Text(
                            "Know Your Doctor",
                            style: TextStyle(fontSize: 50),
                          ),
                        ),
                      ),
                      medical_dpt(screenSize: screenSize),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: dialogflutter()),

                      // Operation(screenSize:screenSize)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
