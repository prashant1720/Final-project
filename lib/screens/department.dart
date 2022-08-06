import 'package:flutter/material.dart';
import 'package:uab/screens/doctorprofile.dart';

class medical_dpt extends StatelessWidget {
  medical_dpt({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: Padding(
        padding: EdgeInsets.only(
          top: screenSize.height * 0.06,
          left: screenSize.width / 15,
          right: screenSize.width / 15,
        ),
        child: GridView(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 2 / 2,
                crossAxisSpacing: 100,
                mainAxisSpacing: 50),
            children: [
              Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => department_doctor(),
                          maintainState: false),
                    );
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.orangeAccent,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      height: 20,
                      width: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Card(
                          color: Colors.amber.shade200,
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Center(
                              child: Text(
                            "Cardiology \n Depeartment",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          )),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          elevation: 5,
                        ),
                      )),
                ),
              ),
              Card(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.orangeAccent,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 20,
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Card(
                        color: Colors.amber.shade200,
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Center(
                            child: Text(
                          "ENT \n Depeartment",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        )),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        elevation: 5,
                      ),
                    )),
              ),
              Card(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.orangeAccent,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 20,
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Card(
                        color: Colors.amber.shade200,
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Center(
                            child: Text(
                          " General\n Depeartment",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        )),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        elevation: 5,
                      ),
                    )),
              ),
              Card(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.orangeAccent,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 20,
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Card(
                        color: Colors.amber.shade200,
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Center(
                            child: Text(
                          "Neurology \n Depeartment",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        )),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        elevation: 5,
                      ),
                    )),
              ),
              Card(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.orangeAccent,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 20,
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Card(
                        color: Colors.amber.shade200,
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Center(
                            child: Text(
                          "Orthopedic \n Depeartment",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        )),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        elevation: 5,
                      ),
                    )),
              ),
              Card(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.orangeAccent,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 20,
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Card(
                        color: Colors.amber.shade200,
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Center(
                            child: Text(
                          " Gynocology \n Depeartment",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        )),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        elevation: 5,
                      ),
                    )),
              ),
            ]
            // numbers
            //     .map((e) => Container(
            //     color: Colors.amber,
            //     alignment: Alignment.center,
            //     child: Text(e)))
            //     .toList(),
            ),
      ),
    );
  }
}
