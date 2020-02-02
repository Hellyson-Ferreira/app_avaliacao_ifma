
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta11.dart';
import 'package:flutter/material.dart';

class Pergunta10 extends StatefulWidget {
  static String tag = 'pergunta10';
  @override
  _Pergunta10State createState() => _Pergunta10State();
}

class _Pergunta10State extends State<Pergunta10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            tooltip: 'Voltar',
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.arrow_forward),
              tooltip: 'Pergunta 11',
              onPressed: () {
                Navigator.of(context).pushNamed(Pergunta11.tag,);
              },
            ),
        ],
        centerTitle: true,
        title: Text(
          'Pergunta 10',
        ),
      ),
      body:Center(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                color: Colors.green[400],
                child: ListTile(
                  title: Center(
                  child: Text(
                  'O(a) professor(a) elabora avaliações compatíveis com os conteúdos ministrados em aula.',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
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
          // width: 1000,
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
                  child: Text("😤 - Discordo totalmente."),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("😠 - Discordo em parte."),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text(" 😐 - Não concordo nem discordo."),
                ),
                PopupMenuItem(
                  value: 4,
                  child: Text(" 🙂 - Concordo em parte."),
                ),
                PopupMenuItem(
                  value: 5,
                  child: Text("😀 - Concordo totalmente."),
                ),
                PopupMenuItem(
                  value: 6,
                  child: Text("😑 - Não sei responder."),
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