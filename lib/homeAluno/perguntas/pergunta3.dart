import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta4.dart';
import 'package:flutter/material.dart';

class Pergunta3 extends StatefulWidget {
  static String tag = 'pergunta3';
  @override
  _Pergunta3State createState() => _Pergunta3State();
}

class _Pergunta3State extends State<Pergunta3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            tooltip: 'voltar',
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.arrow_forward),
              tooltip: 'Pergunta 04',
              onPressed: () {
                Navigator.of(context).pushNamed(Pergunta4.tag,);
              },
            ),
        ],
        centerTitle: true,
        title: Text('Pergunta 03')
      ),
      body:Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 5, width: 0),
              
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30)
                  ),
                  // borderRadius: BorderRadius.only(
                  //   bottomRight: Radius.circular(30),
                  //   bottomLeft: Radius.circular(30)
                  // )
                ),
                width: MediaQuery.of(context).size.width,
                // color: Colors.black,
                child: ListTile(
                  title: Center(
                  child: Text(
                  'O(a) professor(a) demonstra domínio sobre o conteúdo apresentado, tratando-o com clareza e objetividade.',
                  
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