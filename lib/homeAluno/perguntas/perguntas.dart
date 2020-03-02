import 'package:app_avaliacao_ifma/homeAdimin/components/AlertDialogs.dart';
import 'package:app_avaliacao_ifma/homeAluno/components/AlertDialogs.dart';
import 'package:app_avaliacao_ifma/homeAluno/perguntas/list_perguntas.dart';
import 'package:flutter/material.dart';

class Perguntas extends StatefulWidget {
  static String tag = 'pergunta1';
  @override
  _PerguntasState createState() => _PerguntasState();
}

class _PerguntasState extends State<Perguntas> {
  int i = 0;
  int id = 1;
  
  void _incrementCounter() {
    setState(() {
      id++;
      i++;
    });
  }
  void _dincrementCounter() {
    setState(() {
      id--;
      i--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, 
        centerTitle: true,

        leading: IconButton(
            tooltip: 'Anterior',
            icon: const Icon(Icons.arrow_back),
            onPressed: ()=> i== 0 ? Navigator.pop(context) : _dincrementCounter()
          ),

        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.arrow_forward),
              tooltip:'Próxima',
              onPressed: () => i <13 ?  _incrementCounter(): showAlertDialog2ALuno(context)
            ),
        ],
      
        title: Text(
          'Pergunta $id',
        ),
      ),
      
      body:Center(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.green,
                child: ListTile(
                  title: Center(
                  child: Text(
                  perguntas[i],
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                  ),
              )
                )
              ),
              Expanded(
              child: Professores()
            ),
            ],  
          ),
        ),
    );
  }
}
class Professores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final numItems = 16;
    final _biggerFont = const TextStyle(fontSize: 18.0);

    Widget _simplePopup() => PopupMenuButton<int>(
      icon: Icon(Icons.insert_emoticon),
          itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text("😤 - Discordo totalmente"),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("😠 - Discordo em parte"),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text(" 😐 - Não concordo nem discordo"),
                ),
                PopupMenuItem(
                  value: 4,
                  child: Text(" 🙂 -Concordo em parte"),
                ),
                PopupMenuItem(
                  value: 5,
                  child: Text("😀 - Concordo totalmente"),
                ),
              ],
        );

    Widget _buildRow(int idx) {
      return ListTile(
        leading: CircleAvatar(
          child: Text('$idx'),
        ),
        title: Text(
          'Professor $idx',
          style: _biggerFont,
        ),
        trailing: _simplePopup()
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