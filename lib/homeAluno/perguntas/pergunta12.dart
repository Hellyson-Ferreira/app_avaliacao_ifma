
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta13.dart';
import 'package:flutter/material.dart';

class Pergunta12 extends StatefulWidget {
  static String tag = 'pergunta12';
  @override
  _Pergunta12State createState() => _Pergunta12State();
}

class _Pergunta12State extends State<Pergunta12> {
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
              tooltip: 'Pergunta 13',
              onPressed: () {
                Navigator.of(context).pushNamed(Pergunta13.tag,);
              },
            ),
        ],
        centerTitle: true,
        title: Text(
          'Pergunta 12',
        ),
      ),
      body:Center(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                color: Colors.green,
                child: ListTile(
                  title: Center(
                  child: Text(
                  'O(a) professor(a) ouve opiniões e sugestões referentes às suas aulas, mostrando-se aberto(a) ao diálogo.',
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