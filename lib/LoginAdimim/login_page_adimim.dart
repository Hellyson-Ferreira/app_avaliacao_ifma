import 'dart:math';
import 'package:flutter/material.dart';

class LoginPageAdim extends StatefulWidget {
  static String tag = 'login-page-adimim';
  @override
  _LoginPageAdimimState createState() => new _LoginPageAdimimState();
}

class _LoginPageAdimimState extends State<LoginPageAdim> {
  @override
  Widget build(BuildContext context) {

    //Sorteios de Imagens aleatorias
    Random random = new Random();
    var j = random.nextInt(2) + 1;  

    //Gerador de imagens
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/adim'+ j.toString()+'.png'),
        
      ),
    );

    //Variaveis que guardam valor de codigo e senha do adm
    final _codigo = TextEditingController();
    final _senha = TextEditingController();
    
    //Disign Box matricula
    final matricula = TextFormField(
      controller: _codigo,
      keyboardType: TextInputType.visiblePassword,
      autofocus: false,

      decoration: InputDecoration(
        hintText: 'Codigo',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      
    );
    //Disign Box senha
    final password = TextFormField(
      controller: _senha,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Senha',
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
        },
        padding: EdgeInsets.all(12),
        color: Colors.green,
        child: Text('Entrar', style: TextStyle(color: Colors.white)),
      ),
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
            SizedBox(height: 24.0),
            matricula,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
          ],
        ),
      ),
    );
  }
}
