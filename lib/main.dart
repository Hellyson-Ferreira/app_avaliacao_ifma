import 'package:app_avaliacao_ifma/LoginAdimim/login_page_adimim.dart';
import 'package:app_avaliacao_ifma/LoginAluno/login_page_aluno.dart';
import 'package:app_avaliacao_ifma/homeAdimin/home_adimim.dart';
import 'package:app_avaliacao_ifma/homeAluno/home_aluno.dart';
import 'package:app_avaliacao_ifma/tela_de_carregamento/carregamnto.dart';
import 'package:app_avaliacao_ifma/tela_boas_vindas.dart/boas_vindas.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoadingPage.tag: (context) => LoadingPage(),
    LoginPageAluno.tag: (context) => LoginPageAluno(),
    BoasVindasAluno.tag: (context) => BoasVindasAluno(),
    LoginPageAdim.tag: (context) => LoginPageAdim(),
    HomeAluno.tag: (context) => HomeAluno(),
    HomeAdimim.tag: (context) => HomeAdimim(),
    
};

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Nunito',
      ), 
      home:LoadingPage(),
      // home: LoginPageAluno(), 
      routes: routes,
    );
  }
}
