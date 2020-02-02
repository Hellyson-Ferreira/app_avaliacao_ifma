import 'package:app_avaliacao_ifma/homeAdimin/AlertDialogs.dart';
import 'package:flutter/material.dart';

class Pergunta14 extends StatefulWidget {
  static String tag = 'Pergunta 14: ';
  @override
  _Pergunta14State createState() => _Pergunta14State();
}


class _Pergunta14State extends State<Pergunta14> {
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
              icon: const Icon(Icons.check),
              tooltip: 'Salvar',
              onPressed: () {
                showAlertDialog5(context);
                 
              },
            ),
        ],
        centerTitle: true,
        title: Text(
          'Pergunta 14: ',
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
                  '''Como discente, eu me comprometi com as atividades propostas pelo(a) professor(a) que acabei de avaliar (fui assíduo nas aulas, respeitei os horários de aula chegando e saindo nos horários previstos, dediquei-me aos exercícios, trabalhos, provas e debates propostos pelo(a) professor(a) em aula).''',
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