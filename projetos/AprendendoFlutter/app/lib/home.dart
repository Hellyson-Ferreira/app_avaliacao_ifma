import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
       
        children: <Widget>[     
          
          FlutterLogo(size: 100.0,colors: Colors.red),
          FlutterLogo(size: 100.0,colors: Colors.purple),
          FlutterLogo(size: 100.0,colors: Colors.green),
          FlutterLogo(size: 100.0,colors: Colors.amber,),
          FlutterLogo(size: 100.0,colors: Colors.blue,),
          
          
        
        ],
      ),

    );
  }

  
}