
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta12.dart';
import 'package:flutter/material.dart';

class Pergunta11 extends StatefulWidget {
  static String tag = 'pergunta11';
  @override
  _Pergunta11State createState() => _Pergunta11State();
}

class _Pergunta11State extends State<Pergunta11> {
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
              tooltip: 'Pergunta 12',
              onPressed: () {
                Navigator.of(context).pushNamed(Pergunta12.tag,);
              },
            ),
        ],
        centerTitle: true,
        title: Text(
          'Pergunta 11',
          
        ),
      ),
      body:Center(
          // color: Colors.greenAccent,
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                // color: Colors.black,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)
                  )
                ),
                child: ListTile(
                  title: Center(
                  child: Text(
                  'Após as avaliações, o(a) professor(a) discute as questões e esclarece a nota atribuída.',
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
//         floatingActionButton: FloatingActionButton.extended(
//             onPressed: () {},
//             icon: Icon(Icons.navigate_next),
//             label: Text("Próximo"),
// ),
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
                  value: 2,
                  child: Text(" 😐 - Não concordo nem discordo"),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(" 🙂 -Concordo em parte"),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("😀 -Concordo totalmente"),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("😑 - Não sei responder"),
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