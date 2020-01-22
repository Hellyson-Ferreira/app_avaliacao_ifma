import 'package:app_avaliacao_ifma/homeAluno/home_aluno.dart';
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta1.dart';
import 'package:flutter/material.dart';

showAlertDialog1(BuildContext context) 
{ 
    // configura o button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
     },
  );
  // configura o  AlertDialog
  AlertDialog alerta = AlertDialog(
    title: Text("A avalição está disponivel"),
    content: Text("Os alunos já podem enviar resposta"),
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
showAlertDialog2(BuildContext context) 
{ 
    // configura o button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { 
      Navigator.pop(context);
    },
  );
  // configura o  AlertDialog
  AlertDialog alerta = AlertDialog(
    title: Text("A avalição está indisponivel"),
    content: Text("O sistema não está recebendo  mais respostas"),
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
showAlertDialog3(BuildContext context) 
{ 
    // configura o button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { 
      Navigator.pop(context);
    },
  );
  // configura o  AlertDialog
  AlertDialog alerta = AlertDialog(
    title: Text("Notificação"),
    content: Text("Todos os alunos foram notificados"),
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
showAlertDialog4(BuildContext context) 
{ 
    // configura o button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { 
      Navigator.pop(context);
      Navigator.of(context).pushNamed(Pergunta1.tag);
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
showAlertDialog5(BuildContext context) {
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