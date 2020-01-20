import 'package:app_avaliacao_ifma/LoginAluno/login_page_aluno.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class LoadingPage extends StatefulWidget {
  static String tag = 'loading-page';
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
      ),
    
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/logo3.png"),
            fit: BoxFit.none,
          ),
        ),
      ),
    ],
  );
  }
}