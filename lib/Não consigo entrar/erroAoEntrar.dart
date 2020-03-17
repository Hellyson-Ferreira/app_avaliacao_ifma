import 'package:app_avaliacao_ifma/homeAluno/sites/Suap.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  static String tag = 'Errologin';
  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    final suap = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(
            Suap.tag,
          );
        },
        padding: EdgeInsets.all(12),
        elevation: 12,
        color: Colors.green,
        child: Text('Ir para o Suap', style: TextStyle(color: Colors.white)),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 24.0, right: 24.0),
        children: <Widget>[
          SizedBox(
            width: 200,
            height: 200,
            child: Image.asset("assets/logo.png"),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Não consegue entrar?",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Por favor, vá até o Suap e atualize suas informções ou dirija-se ao setor de TI do campus.",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          suap
        ],
      ),
    );
  }
}
