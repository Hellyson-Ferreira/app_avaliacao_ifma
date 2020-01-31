import 'package:app_avaliacao_ifma/homeAluno/home_aluno.dart';
import 'package:flutter/material.dart';

class BoasVindasAluno extends StatelessWidget {
  static String tag = 'boas_vindas_aluno';

  @override
  Widget build(BuildContext context) {
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Olá, bem vindo ao App da Avaliação Docente do IFMA Caxias.',
        style: TextStyle(
          fontSize: 28.0, 
          color: Colors.white),
      ),
    );


    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '''Este programa tem como objetivo a aplicação de instrumento que visa identificar a percepção do estudante em relação à atuação dos professores nas atividades desenvolvidas no curso, com vistas ao aperfeiçoamento e acompanhamento da qualidade de ensino oferecido na UFSM. Os resultados desta avaliação serão utilizados no planejamento e na implementação de ações que busquem a melhoria da prática pedagógica na Instituição.''',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );


    final iniciarButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.pop(context);
          Navigator.of(context).pushNamed(HomeAluno.tag,);
        },
        padding: EdgeInsets.all(12),
        //color: Colors.lightBlueAccent,
        color: Colors.white,
        child: Text('Continuar', style: TextStyle(color: Colors.black)),
      ),
    );

    final body = Container(
      alignment: Alignment.bottomRight,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      color: Colors.green,
      child: ListView(
        children: <Widget>[
          welcome,
           lorem,
           iniciarButton,
           ],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}