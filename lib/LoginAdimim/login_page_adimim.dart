import 'package:app_avaliacao_ifma/homeAdimin/home_adimim.dart';
import 'package:flutter/material.dart';

class LoginPageAdim extends StatefulWidget {
  @override
  _LoginPageAdimimState createState() => new _LoginPageAdimimState();
}

class _LoginPageAdimimState extends State<LoginPageAdim> {
  @override
  Widget build(BuildContext context) {
    //Gerador de imagens
    final logo = Hero(
      tag: 'img1',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 66.0,
        child: Image.asset('assets/users/man.png'),
      ),
    );

    //Variaveis que recebeem o valor de codigo e senha do adm
    final _codigo = TextEditingController();
    final _senha = TextEditingController();
    //Disign Box codigo
    final codigo = TextFormField(
      controller: _codigo,
      keyboardType: TextInputType.visiblePassword,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Usuário',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    //Disign Box senha
    final password = TextFormField(
      controller: _senha,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Senha',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    //Disign do botão entrar
    final loginButtonadm = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeAdimim()));
        },
        elevation: 12,
        padding: EdgeInsets.all(12),
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
            codigo,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButtonadm,
          ],
        ),
      ),
    );
  }
}
