import 'package:flutter/material.dart';


import 'models/bancoBD.dart';
import 'models/item.dart';

class EditorPerguntas extends StatefulWidget {
  @override
  _EditorPerguntasState createState() => _EditorPerguntasState();
}

class _EditorPerguntasState extends State<EditorPerguntas> {
  TextEditingController newTaskCtrl = TextEditingController();
  List<Item> data;
  final banco = Banco.instance;

  _EditorPerguntasState() {
    data = new List<Item>();
    load();
  }

  // void transformaaListaemMapStringDynamic() {
  //   List<Map<String, dynamic>> lista = [];
  //   for (var i in data) {
  //     lista.add(i.toJson());
  //   }
  // }

  Future load() async {
    final listatemp = await banco.getall();
    setState(() {
      data = listatemp;
    });

    // transformaaListaemMapStringDynamic();
  }

  Future<void> add(texto) async {
    if (texto.isEmpty) return;
    setState(() {
      Item item = Item(title: "$texto");
      banco.insertItem(item.toJson());
      newTaskCtrl.clear();
    });
    await load();
  }

  Future<void> remove(id) async {
    await banco.deleteItem('$id');
    await load();
  }
 showAlertDialog(BuildContext context){
    AlertDialog alerta = AlertDialog(
            title: Text('Nova pergunta'),
            content: TextField(
                controller: newTaskCtrl,
                autofocus: true,
            ),
            actions: <Widget>[
                FlatButton(
                    child: Text('Cancelar'),
                    onPressed: () {
                        Navigator.of(context).pop();
                    },
                ),
                FlatButton(
                    child: Text('Adicionar'),
                    onPressed: () {
                        add(newTaskCtrl.value.text);
                        newTaskCtrl.clear();
                        Navigator.of(context).pop();
                    },
                ),
            ],
        );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
  );
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Tirar Text
        title: Text('Editor de perguntas')
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext ctxt, int index) {
          final datas = data[index];

          return Column(
            children: <Widget>[
              Dismissible(
                child: ListTile(
                  title: Text('${datas.title}'),
                  subtitle: Text('${datas.id}'),
                ),
                key: Key(datas.toString()),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  if (direction == DismissDirection.endToStart) {
                    remove(datas.id);
                  }
                },
                background: Container(
                  color: Colors.red.withOpacity(0.4),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.close),
                  ),
                  alignment: Alignment.centerRight,
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAlertDialog(context);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
