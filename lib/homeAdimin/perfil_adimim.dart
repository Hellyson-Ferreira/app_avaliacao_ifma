import 'package:flutter/material.dart';
class PerfilAdimim extends StatelessWidget {
  static String tag = 'perfil-page-adimim';
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('Perfil'),),
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // background image and bottom contents
            Column(
              children: <Widget>[
                Container(
                  height: 200.0,
                  color: Colors.green,
                  child: Center(
                    child: Text('Background image goes here'),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Center(
                      child: Text('Content goes here'),
                    ),
                  ),
                )
              ],
            ),
            // Profile image
            Positioned(
              top: 150.0, // (background container size) - (circle height / 2)
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    // image: AssetImage('assets/hellyson.jpg'),
                    image: AssetImage('assets/filho.jpg'),
                      fit: BoxFit.fill
                  )
                ),
              ),
            )
          ],
        ),
      );
    }
  }