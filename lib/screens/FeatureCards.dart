import 'package:flutter/material.dart';
import 'package:uab/screens/bedportal.dart';
import 'package:uab/screens/bloodportal.dart';
import 'package:uab/screens/operation.dart';

class FeatureCard extends StatelessWidget {
  FeatureCard({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;
  final List<String> assets = [
    'images/graph.png',
    'images/bed.png',
    'images/blood.png',
  ];

  final List<String> title = [
    'Operations',
    'Bed Availability',
    'Blood Availability'
  ];

  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Padding(
        padding: EdgeInsets.only(
          top: screenSize.height * 0.06,
          left: screenSize.width / 15,
          right: screenSize.width / 15,
        ),
        child: GridView(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 500,
                childAspectRatio: 2 / 2,
                crossAxisSpacing: 100,
                mainAxisSpacing: 50),
            children: [
              Card(
                child: Container(
                    height: 20,
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Operation()),
                        ),
                        child: Card(
                          color: Colors.amber.shade200,
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Center(child: Image.asset("images/graph.png")),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          elevation: 5,
                        ),
                      ),
                    )),
              ),
              Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => bedportal(),
                          maintainState: false),
                    );
                  },
                  child: Container(
                      height: 20,
                      width: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Card(
                          color: Colors.blue.shade300,
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Center(child: Image.asset("images/bed.png")),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          elevation: 5,
                        ),
                      )),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => bloodportal(),
                          maintainState: false),
                    );
                  },
                  child: Container(
                      height: 20,
                      width: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Card(
                          color: Colors.pink.shade400,
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Center(child: Image.asset("images/blood.png")),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          elevation: 5,
                        ),
                      )),
                ),
              ),
            ]),
      ),
    );
  }
}
