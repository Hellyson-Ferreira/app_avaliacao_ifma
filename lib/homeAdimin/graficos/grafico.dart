import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Graficos extends StatefulWidget {
  static String tag = 'graficos';
  @override
  _GraficosState createState() => _GraficosState();
}

class _GraficosState extends State<Graficos> {
   Random random = new Random();
   

  @override
  Widget build(BuildContext context) {
    var a =  random.nextInt(50);
    var b =  random.nextInt(50);

    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Respondidos", () => a.truncateToDouble());
    dataMap.putIfAbsent("Pendentes", () => b.truncateToDouble());

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              height: 100,
              width: double.infinity,
              color: Colors.green,
              child: Center(
                child: Text(
                  'Grafico da turma',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white
                  ),
                ),
              ),

            ),
            SizedBox(height: 40,),
            Container(
              height: 360,
              width: 360,
              child: PieChart(
                dataMap: dataMap,
                colorList: [Colors.green,Colors.red],
                animationDuration: Duration(milliseconds: 800),
                chartLegendSpacing: 32.0,
                showChartValuesInPercentage: true,
                showChartValues: true,
                // chartType: ChartType.ring,
      ),
              decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[500],
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color:Colors.grey,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                  ]),
            ),
      //       Text(
      //         'Titulo do grafico',
      //         style: TextStyle(
      //           fontSize: 30
      //         ),
      //         ),
      //       PieChart(
      //           dataMap: dataMap,
      //           colorList: [Colors.green,Colors.red],
      //           animationDuration: Duration(milliseconds: 800),
      //           chartLegendSpacing: 32.0,
      //           showChartValuesInPercentage: true,
      //           showChartValues: true,
      // )
          ],
        ),
      ),
    );
  }
}