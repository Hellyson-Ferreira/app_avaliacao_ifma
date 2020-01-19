import 'dart:math';
import 'package:app_avaliacao_ifma/homeAdimin/graficos/grafico.dart';
import 'package:flutter/material.dart';

class Turmas extends StatefulWidget {
  static String tag = 'turmas';
  @override
  _TurmasState createState() => _TurmasState();
}

class _TurmasState extends State<Turmas> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          'Turmas'
        ),
      ),
      body:ListaTurmas(),
    );
  }
}
class ListaTurmas extends StatefulWidget {
  @override
  _ListaTurmasState createState() => _ListaTurmasState();
}

class _ListaTurmasState extends State<ListaTurmas> {
  Random random = new Random();

  List colors = [Colors.purple, Colors.green, Colors.yellow,Colors.blue,Colors.brown];

  @override
  Widget build(BuildContext context) {
    final numItems = 12;
    final _biggerFont = const TextStyle(fontSize: 18.0);
    var index = 0;
    
    Widget _buildRow(int idx) {
      index = random.nextInt(5);
      return ListTile(
        leading: CircleAvatar(
          child: Text('$idx'),
          backgroundColor: colors[index],
        ),
        title: Text(
          'Turma $idx',
          style: _biggerFont,
        ),
        trailing: null,
        onTap: (){
            Navigator.of(context).pushNamed(Graficos.tag);
        },
      );
    }

    return ListView.builder(
      itemCount: numItems * 2,
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (BuildContext context, int i) {
        if (i.isOdd) {
          return Divider();
        }
        final index = i ~/ 2 + 1;
        return _buildRow(index);
      },
    
    );
  }
}