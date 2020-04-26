import 'package:app_avaliacao_ifma/tela_de_carregamento/carregamnto.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Avaliação IFMA",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        primarySwatch: Colors.green,
        fontFamily: 'Nunito',
        buttonColor: Colors.green,
        // brightness: Brightness.dark
      ),
      home: LoadingPage(),
    );
  }
}
