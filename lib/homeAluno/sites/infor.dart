import 'package:flutter/material.dart';

class InforPage extends StatefulWidget {
static String tag = 'infor_page';

  @override
  
  _InforPageState createState() => _InforPageState();
}

class _InforPageState extends State<InforPage> {
  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
        child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/hellyson.jpg'),
        
          ),
    ),
    );
    
    final felipe = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/felipe.jpg'),
        ),
        ),
    );
    
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'TExto de bem vindo',
        style: TextStyle(fontSize: 28.0, color: Colors.black),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Imagem de Hellyson e Felipe.',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
  
      ),
      child: Column(
        children: <Widget>[
         Wrap(
           direction: Axis.horizontal,
           children: <Widget>[
           alucard, 
            felipe,
            
         ],),
            welcome, 
            lorem
          ],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}