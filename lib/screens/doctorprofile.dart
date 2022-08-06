
import 'package:flutter/material.dart';
import 'package:uab/screens/doctorprofilepage.dart';


class department_doctor extends StatelessWidget {
  const department_doctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView(

    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
    maxCrossAxisExtent: 300,
        childAspectRatio: 2 / 2,
        crossAxisSpacing: 100,
        mainAxisSpacing: 50
    ),

    children: [
    Card(

      child: Container(

          decoration: BoxDecoration(
              color:Colors.white,
              border: Border.all(
                color: Colors.green,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          height: 20,
          width: 50,
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Card(
              color: Colors.green,
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Center(child: Text("Dr: Vikranth",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.white),)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),
              elevation: 5,
            ),
          )
      ),
    ),

      Card(

        child: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Profile(), maintainState: false),
            );
          },
          child: Container(

              decoration: BoxDecoration(
                  color:Colors.white,
                  border: Border.all(
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              height: 20,
              width: 50,
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Card(
                  color: Colors.green,
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Center(child: Text("Dr : Prashant Sharma",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.white),)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  elevation: 5,
                ),
              )
          ),
        ),
      ),

      Card(

        child: Container(

            decoration: BoxDecoration(
                color:Colors.white,
                border: Border.all(
                  color: Colors.green,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            height: 20,
            width: 50,
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Card(
                color: Colors.green,
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Center(child: Text(" Dr : Chakri",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.white),)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
                elevation: 5,
              ),
            )
        ),
      ),



    ]
     .toList(),
    ),
    );
  }
}
