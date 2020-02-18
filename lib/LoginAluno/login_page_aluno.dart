import 'dart:math';
import 'package:app_avaliacao_ifma/LoginAdimim/login_page_adimim.dart';
import 'package:app_avaliacao_ifma/N%C3%A3o%20consigo%20entrar/erroAoEntrar.dart';
import 'package:app_avaliacao_ifma/tela_boas_vindas.dart/boas_vindas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPageAluno extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageAlunoState createState() => _LoginPageAlunoState();
}

class _LoginPageAlunoState extends State<LoginPageAluno> {
  @override
  Widget build(BuildContext context) {

    //Sorteios de Imagens aleatorias
    var random = Random();
    var j = random.nextInt(36) + 1;
    
    //Gerador de imagens
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 60.0,
        child: Image.asset('assets/imgs/img'+ j.toString()+'.png'),
        // child: Image.asset("assets/users.json"),
      ),
    );

    //Variaveisque recebeem o  valor de matricula e senha
    final _matric = TextEditingController();
    final _senha = TextEditingController();
    
    //Disign Box matricula
    final matricula = TextFormField(
      controller: _matric,
      keyboardType: TextInputType.visiblePassword,
      autofocus: false,
      //initialValue: '20181IC.CAX0007',
      decoration: InputDecoration(
        hintText: 'Matrícula',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      
    );
    //Disign Box senha
    final password = TextFormField(
      
      controller: _senha,
      autofocus: false,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        //filled: true,
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
          //Validacao n = new Validacao();
          ///if(n.validarLogiin(_matric.text, _senha.text)){
            //Navigator.of(context).pushNamed(HomePage.tag);
          //}
          Navigator.of(context).pushNamed(BoasVindasAluno.tag);           
        },
        // elevation: 12,
        padding: EdgeInsets.all(12),
        color: Colors.green,
        child: Text('Entrar', style: TextStyle(color: Colors.white)),
      ),
    );
    //Disign do botão 
    final forgotLabel = FlatButton(
      child: Text(
        'Não consigo entrar',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(ResetPasswordPage.tag);
        
      },
    );

    //Gerador de elementos da tela
    return WillPopScope(
      onWillPop: _onBackPressed,
      child:Scaffold(       
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              SizedBox(height: 38.0),
              matricula,
              SizedBox(height: 8.0),
              password,
              SizedBox(height: 24.0),
              loginButton,
              //telaAdimim,
              forgotLabel
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
              onPressed: () {
                Navigator.of(context).pushNamed(LoginPageAdim.tag);
              },
              child: Icon(Icons.person),
),
      ),
    );
  }

  Future<bool> _onBackPressed() {
    return SystemNavigator.pop();
  }

}
