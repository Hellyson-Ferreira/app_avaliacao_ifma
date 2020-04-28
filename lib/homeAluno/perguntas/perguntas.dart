import 'package:app_avaliacao_ifma/homeAluno/components/AlertDialogs.dart';
import 'package:app_avaliacao_ifma/homeAluno/perguntas/list_perguntas.dart';
import 'package:flutter/material.dart';

import 'professor/porofessor_widget.dart';

class Perguntas extends StatefulWidget {
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
              i == 0 ? Navigator.pop(context) : _dincrementCounter(),
        ),
        actions: <Widget>[
          id != 14
              ? IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  tooltip: 'Próxima',
                  onPressed: () => _incrementCounter(),
                )
              : IconButton(
                  icon: const Icon(Icons.send),
                  tooltip: 'Enviar',
                  onPressed: () => showAlertDialog2ALuno(context),
                ),
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
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 33,
                  itemBuilder: (context, index) {
                    return ProfessorWidget(
                      nome: professores[index],
                      imagePach: 'assets/professores/img${index + 1}.jpg',
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class ModelProfessor {}
