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
        'AVALIAÇÃO DOCENTE',
        style: TextStyle(fontSize: 28.0, color: Colors.black),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Aplicativo criado por Felipe Anderson e Hellyson Gabriel, com o intento de facilitar a avaliação docente aplicada no IFMA Campus Caxias. Tendo como finalidade identificar a percepção dos estudantes da instituição em relação à atuação dos professores nas atividades desenvolvidas no curso, visando o aperfeiçoamento da qualidade de ensino oferecido no Instituto Federal do Maranhão – Campus Caxias. ',
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