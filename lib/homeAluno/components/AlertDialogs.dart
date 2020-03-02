import 'package:app_avaliacao_ifma/homeAluno/home_aluno.dart';
import 'package:app_avaliacao_ifma/homeAluno/perguntas/perguntas.dart';
import 'package:flutter/material.dart';


showAlertDialog1ALuno(BuildContext context) 
{ 
    // configura o button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { 
      Navigator.pop(context);
      Navigator.of(context).pushNamed(Perguntas.tag);
    },
  );
  // configura o  AlertDialog
  AlertDialog alerta = AlertDialog(
    title: Text("Avaliação"),
    content: Text("Certifique-se de todas as resposta antes de enviar.As resposta só seram enviadas quando a ultima pergunta for respondida"),
    actions: [
      okButton,
    ],
  );
  // exibe o dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}
showAlertDialog2ALuno(BuildContext context) {
   Widget cancelaButton = FlatButton(
    child: Text("Rever respostas"),
    onPressed:  () {
      Navigator.pop(context);
    },
  );
  Widget continuaButton = FlatButton(
    child: Text("Enviar"),
    onPressed:  () {
      Navigator.of(context).pushNamed(HomeAluno.tag,);

    },
  );
  //configura o AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Respostas"),
    content: Text("Enviar espostas?"),
    actions: [
      cancelaButton,
      continuaButton,
    ],
  );
  //exibe o diálogo
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
