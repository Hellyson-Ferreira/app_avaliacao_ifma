import 'package:app_avaliacao_ifma/homeAluno/home_aluno.dart';
import 'package:flutter/material.dart';

class BoasVindasAluno extends StatelessWidget {
  static String tag = 'boas_vindas_aluno';

  @override
  Widget build(BuildContext context) {
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Olá, bem vindo ao app da Avaliação Doscente do IFMA Caxias.',
        style: TextStyle(
          fontSize: 28.0, 
          color: Colors.white),
      ),
    );


    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '''Quem ler é GAY''',
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
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.green,
          Colors.green,
          
        ]),
      ),
      
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