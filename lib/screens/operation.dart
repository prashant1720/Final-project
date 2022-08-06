import 'package:draw_graph/draw_graph.dart';
import 'package:flutter/material.dart';
import 'package:draw_graph/models/feature.dart';

class Operation extends StatefulWidget {
  @override
  _OperationState createState() => _OperationState();
}

class _OperationState extends State<Operation> {
  final List<Feature> features = [
    Feature(
      title: "Heart Transplant surgeries",
      color: Colors.blue,
      data: [0.3, 0.6, 0.8, 0.9, 1, 1.2],
    ),

  ];

  final List<Feature> neuro =[
    Feature(
         title: "Neurological disorders cured",
        color: Colors.green,
        data: [0.25, 0.60, 0.4, 0.5, 0.8, 1,4],
    )
  ];
  final List<Feature> general =[
    Feature(
      title: "Commond Seasonal diseases",
      color: Colors.blue,
      data: [0.25, 0.30, 0.40, 0.5, 0.8, 1,4],
    )
  ];
  final List<Feature> ent =[
    Feature(
      title: "Throat Diseases cured",
      color: Colors.purple,
      data: [0.25, 0.28, 0.35, 0.45, 0.60, 1,2],
    )
  ];
  final List<Feature> orthopedic =[
    Feature(
      title: "Bone cancer cured",
      color: Colors.green,
      data: [0.25, 0.25, 0.28, 0.33, 0.38, 0.55,0.75],
    )
  ];
  final List<Feature> gyno =[
    Feature(
      title: "Sucessful child deliveries",
      color: Colors.deepOrange,
      data: [0.25, 0.50, 0.75, 1, 1.25, 1.50],
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SizedBox(
        height: 1000,
        child: GridView(

            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 500,
                childAspectRatio: 2 / 2,
                crossAxisSpacing: 100,
                mainAxisSpacing: 50
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Card(
                  color: Colors.amber.shade200,

                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: <Widget>[
                      Text(
                        "Cardic Department",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      LineGraph(
                        features: features,
                        size: Size(350, 300),
                        labelX: ['2012', '2014', '2016', '2018', '2020', '2022'],
                        labelY: ['25%', '45%', '65%', '75%', '85%', '100%'],
                        showDescription: true,
                        graphColor: Colors.black87,
                      ),

                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  elevation: 5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Card(
                  color: Colors.amber.shade200,

                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: <Widget>[
                      Text(
                        "Neuro Department",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      LineGraph(
                        features: neuro,
                        size: Size(350, 300),
                        labelX: ['2012', '2014', '2016', '2018', '2020', '2022'],
                        labelY: ['25%', '45%', '65%', '75%', '85%', '100%'],
                        showDescription: true,
                        graphColor: Colors.black87,
                      ),

                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  elevation: 5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Card(
                  color: Colors.amber.shade200,

                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: <Widget>[
                      Text(
                        "General Department",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      LineGraph(
                        features: general,
                        size: Size(350, 300),
                        labelX: ['2012', '2014', '2016', '2018', '2020', '2022'],
                        labelY: ['25%', '45%', '65%', '75%', '85%', '100%'],
                        showDescription: true,
                        graphColor: Colors.black87,
                      ),

                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  elevation: 5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Card(
                  color: Colors.amber.shade200,

                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: <Widget>[
                      Text(
                        "ENT Department",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      LineGraph(
                        features: ent,
                        size: Size(350, 300),
                        labelX: ['2012', '2014', '2016', '2018', '2020', '2022'],
                        labelY: ['25%', '45%', '65%', '75%', '85%', '100%'],
                        showDescription: true,
                        graphColor: Colors.black87,
                      ),

                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  elevation: 5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Card(
                  color: Colors.amber.shade200,

                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: <Widget>[
                      Text(
                        "Orthopedic Department",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      LineGraph(
                        features: orthopedic,
                        size: Size(350, 300),
                        labelX: ['2012', '2014', '2016', '2018', '2020', '2022'],
                        labelY: ['25%', '45%', '65%', '75%', '85%', '100%'],
                        showDescription: true,
                        graphColor: Colors.black87,
                      ),

                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  elevation: 5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Card(
                  color: Colors.amber.shade200,

                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: <Widget>[
                      Text(
                        "Gynocology Department",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      LineGraph(
                        features: gyno,
                        size: Size(350, 300),
                        labelX: ['2012', '2014', '2016', '2018', '2020', '2022'],
                        labelY: ['25%', '45%', '65%', '75%', '85%', '100%'],
                        showDescription: true,
                        graphColor: Colors.black87,
                      ),

                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  elevation: 5,
                ),
              ),


            ]

        ),
      ),
    );


  }
}



