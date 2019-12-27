import 'dart:math';
import 'package:flutter/material.dart';
import 'package:login/home_page.dart';
import 'package:login/validacao.dart';


class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    //Sorteios de Imagens aleatorias
    Random random = new Random();
    var j = random.nextInt(30) + 1;
    //print(j);        

    //Gerador de imagens
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/img'+ j.toString()+'.png'),
      ),
    );

    //Variaveis que guardam valor de matricula e senha
    final _matric = TextEditingController();
    final _senha = TextEditingController();
    
    //Disign Box matricula
    final matricula = TextFormField(
      controller: _matric,
      keyboardType: TextInputType.visiblePassword,
      autofocus: false,
      //initialValue: '20181IC.CAX0007',
      decoration: InputDecoration(
        hintText: 'Matricula',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      
    );
    //Disign Box senha
    final password = TextFormField(
      controller: _senha,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Senha do Suap',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    
    );
    //Disign do botão entrar
    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Validacao n = new Validacao();
          if(n.validarLogiin(_matric.text, _senha.text)){
            Navigator.of(context).pushNamed(HomePage.tag);
          }
          //Navigator.of(context).pushNamed(HomePage.tag);           
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightGreen,
        child: Text('Entrar', style: TextStyle(color: Colors.white)),
      ),
    );
    //Disign do botão 
    final forgotLabel = FlatButton(
      child: Text(
        'Não consigo entrar',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    //Gerador de elementos da tela
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            matricula,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}