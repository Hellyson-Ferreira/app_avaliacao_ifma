import 'package:app_avaliacao_ifma/rotas.dart';
import 'package:app_avaliacao_ifma/tela_de_carregamento/carregamnto.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Routes routes = new Routes();

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Nunito',
      ), 
      home:LoadingPage(),
      routes: routes.routes,
    );
  }
}
