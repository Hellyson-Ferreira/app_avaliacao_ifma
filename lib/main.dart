import 'package:app_avaliacao_ifma/tela_de_carregamento/carregamnto.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Avaliação IFMA",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff6a1b9a),
        primarySwatch: Colors.purple,
        fontFamily: 'Nunito',
        buttonColor: Colors.purple,
        // brightness: Brightness.dark
      ),
      home: LoadingPage(),
    );
  }
}
