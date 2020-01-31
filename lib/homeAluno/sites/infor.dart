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
                'AVALIAÇÃO DOCENTE',
                style: TextStyle(fontSize: 28.0, color: Colors.black),
              ),
             ),
             Padding(
               padding: EdgeInsets.all(8.0),
              child: Text(
                'Aplicativo criado por Felipe Anderson e Hellyson Gabriel, com o intento de facilitar a avaliação docente aplicada no IFMA Campus Caxias. Tendo como finalidade identificar a percepção dos estudantes da instituição em relação à atuação dos professores nas atividades desenvolvidas no curso, visando o aperfeiçoamento da qualidade de ensino oferecido no Instituto Federal do Maranhão – Campus Caxias. ',
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