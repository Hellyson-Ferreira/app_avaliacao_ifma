import 'package:flutter/material.dart';

class InforPage extends StatefulWidget {
  @override
  
  _InforPageState createState() => _InforPageState();
}

class _InforPageState extends State<InforPage> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,

      ),
      body: ListView(
        padding: EdgeInsets.only(left: 15, right: 15),
        children: <Widget>[
          SizedBox(
            width: 200,
            height: 200,
            child: Image.asset("assets/gifs/programming.gif"),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Avaliação Docente",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
              
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "   Aplicativo criado por Felipe Anderson e Hellyson Gabriel, com o intento de facilitar a avaliação docente aplicada no IFMA Campus Caxias. Tendo como finalidade identificar a percepção dos estudantes da instituição em relação à atuação dos professores nas atividades desenvolvidas no curso, visando o aperfeiçoamento da qualidade de ensino oferecido no Instituto Federal do Maranhão – Campus Caxias.",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}