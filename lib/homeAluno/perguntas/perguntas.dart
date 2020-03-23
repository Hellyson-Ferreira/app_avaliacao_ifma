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
            onPressed: () =>
                i == 0 ? Navigator.pop(context) : _dincrementCounter()),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.arrow_forward),
              tooltip: 'Próxima',
              onPressed: () => i < 13
                  ? _incrementCounter()
                  : showAlertDialog2ALuno(context)),
        ],
        title: Text(
          'Pergunta $id',
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.green,
                child: ListTile(
                    title: Center(
                  child: Text(
                    perguntas[i],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ))),
            Expanded(child: Professores()),
          ],
        ),
      ),
    );
  }
}

class Professores extends StatefulWidget {
  @override
  _ProfessoresState createState() => _ProfessoresState();
}

class _ProfessoresState extends State<Professores> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 33,
      itemBuilder: (context, i) {
        return _card(i);
      },
    );
  }

  
_simplePopup() => PopupMenuButton<int>(
        icon: Icon(
          Icons.insert_emoticon,
          size: 29,
          color: Colors.white,
        ),
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
            child: Text("😐 - Não concordo nem discordo"),
          ),
          PopupMenuItem(
            value: 4,
            child: Text("🙂 -Concordo em parte"),
          ),
          PopupMenuItem(
            value: 5,
            child: Text("😀 - Concordo totalmente"),
          ),
        ],
        onSelected: (value) {
          return value;
        },
        initialValue: 0,
      );

  _card(index) {
    double t = professores[index].length.toDouble();
    final card = Container(
      height: t<=30?130:130+t/2,
      margin: EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          //color: Color(0xFF3333366),
          color: Colors.green,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                offset: Offset(0.0, 10.0),
                blurRadius: 10.0)
          ]),
      child: Container(
        margin: const EdgeInsets.only(top: 15.0, left: 49.0),
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              professores[index],
              style: TextStyle(fontSize: 19, color: Colors.white),
            ),
            Container(
              color: const Color(0xFF00C6FF),
              width: 100,
              height: 1.0,
              margin: const EdgeInsets.symmetric(vertical: 8.0)),
            Container(
              //color: Colors.amber,
              height: 30,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                textDirection: TextDirection.rtl,
                children: <Widget>[Container(child: _simplePopup())],
              ),
            )
          ],
        ),
      ),
    );

    final image = Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/professores/img${index + 1}.jpg'),
          // fit: BoxFit.fill
        ),
      ),
    );
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
          child: Stack(
            children: <Widget>[card, image],
          ),
        ),
      ],
    );
  }
}
