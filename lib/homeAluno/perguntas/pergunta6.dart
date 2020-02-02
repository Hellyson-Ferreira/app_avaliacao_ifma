
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta7.dart';
import 'package:flutter/material.dart';

class Pergunta6 extends StatefulWidget {
  static String tag = 'pergunta6';
  @override
  _Pergunta6State createState() => _Pergunta6State();
}

class _Pergunta6State extends State<Pergunta6> {
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
              tooltip: 'Pergunta 07',
              onPressed: () {
                Navigator.of(context).pushNamed(Pergunta7.tag,);
              },
            ),
        ],
        centerTitle: true,
        title: Text(
          'Pergunta 06',
          
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
                  'Quando solicitado(a), o(a) professor(a) mostra-se disponível para tirar dúvidas (em sala ou em horário pedagógico) sobre a disciplina e o conteúdo ministrado.',
                  
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,),),
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
                  child: Text(" 🙂 -Concordo em parte."),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("😀 -Concordo totalmente."),
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