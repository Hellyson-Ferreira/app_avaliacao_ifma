
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta8.dart';
import 'package:flutter/material.dart';

class Pergunta7 extends StatefulWidget {
  static String tag = 'pergunta7';
  @override
  _Pergunta7State createState() => _Pergunta7State();
}

class _Pergunta7State extends State<Pergunta7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            tooltip: 'voltar',
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              //_nextPage(-1);
              Navigator.pop(context);
            },
          ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.arrow_forward),
              tooltip: 'Pergunta 08',
              onPressed: () {
                Navigator.of(context).pushNamed(Pergunta8.tag,);
              },
            ),
        ],
        centerTitle: true,
        title: Text(
          'Pergunta 07',
          
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
                  'O(a) professor(a) utiliza metodologia (formas de ensino) que facilite a aprendizagem.',
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
                  value: 2,
                  child: Text(" 😐 - Não concordo nem discordo."),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(" 🙂 - Concordo em parte."),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("😀 - Concordo totalmente."),
                ),
                PopupMenuItem(
                  value: 2,
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