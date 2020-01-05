import 'package:app_avaliacao_ifma/homeAluno/home_aluno.dart';
import 'package:flutter/material.dart';

class BoasVindasAluno extends StatelessWidget {
  static String tag = 'boas_vindas_aluno';

  @override
  Widget build(BuildContext context) {
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Bem Vindo ao App de  Avaliação docente',
        style: TextStyle(
          fontSize: 28.0, 
          color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '''Beautiful is better than ugly.
Explicit is better than implicit.
Simple is better than complex.
Complex is better than complicated.
Flat is better than nested.
Sparse is better than dense.
Readability counts.
Special cases aren't special enough to break the rules.
Although practicality beats purity.
Errors should never pass silently.
Unless explicitly silenced.
In the face of ambiguity, refuse the temptation to guess.
There should be one-- and preferably only one --obvious way to do it.
Although that way may not be obvious at first unless you're Dutch.
Now is better than never.
Although never is often better than *right* now.
If the implementation is hard to explain, it's a bad idea.
If the implementation is easy to explain, it may be a good idea.
Namespaces are one honking great idea -- let's do more of those!
Python
''',
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
