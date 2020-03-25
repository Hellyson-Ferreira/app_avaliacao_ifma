import 'package:app_avaliacao_ifma/LoginAluno/login_page_aluno.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() => super.initState();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 4,
          backgroundColor: Colors.white,
          navigateAfterSeconds: LoginPageAluno(),
          loaderColor: Colors.green,
          loadingText: Text('Iniciando...'),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/logo.png"),
              fit: BoxFit.none,
            ),
          ),
        ),
      ],
    );
  }
}
