import 'package:app_avaliacao_ifma/rotas/rotas.dart';
import 'package:app_avaliacao_ifma/tela_de_carregamento/carregamnto.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var routes = Routes();

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
    
      
      theme: ThemeData(
        primaryColor: Colors.green,
        primarySwatch: Colors.green,
        fontFamily: 'Nunito',
        buttonColor: Colors.green,
        // brightness: Brightness.dark

      ), 
      
      home:LoadingPage(),
      routes: routes.routes,
    );
  }
}
