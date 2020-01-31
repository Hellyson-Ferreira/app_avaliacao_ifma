import 'package:flutter/material.dart';

class InforPage extends StatefulWidget {
static String tag = 'infor_page';

  @override
  
  _InforPageState createState() => _InforPageState();
}

class _InforPageState extends State<InforPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text(
         'Sobre'
       ),
     ),
     body: Center(
       child: Container(
         child: Column(
           children: <Widget>[
             Hero(
               tag: 'app_icon',
               child: Padding(
                 padding: EdgeInsets.all(16.0),
                child: CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/logo.png'),
          
            ),

               ),
             ),
             Padding(
               padding: EdgeInsets.all(8.0),
              child: Text(
                'TExto de bem vindo',
                style: TextStyle(fontSize: 28.0, color: Colors.black),
              ),
             ),
             Padding(
               padding: EdgeInsets.all(8.0),
              child: Text(
                'Imagem de Hellyson e Felipe.',
                style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
             )

           ],
         ),
       ),
     ),
    );
  }
}