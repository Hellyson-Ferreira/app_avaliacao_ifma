import 'package:app_avaliacao_ifma/LoginAluno/login_page_aluno.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/cupertino.dart';

class LoadingPage extends StatefulWidget {
  static String tag = 'loading-page';
  @override
  _LoadingPageState createState() => _LoadingPageState();
}
class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
    children: <Widget>[
      SplashScreen(
        seconds: 5,
        // title:new Text('Avaliação de professores',
        // style: new TextStyle(
          // fontWeight: FontWeight.bold,
          // fontSize: 20.0
        // ),),
        // styleTextUnderTheLoader: new TextStyle(),
        // photoSize: 0,
        gradientBackground: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.green,
            Colors.lightGreen,
            //Colors.lightGreenAccent
          ],
        ),
        navigateAfterSeconds: LoginPageAluno(),
        loaderColor: Colors.blueGrey,
      ),
    
      Container(
        // height: 700,
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