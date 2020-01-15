import 'package:app_avaliacao_ifma/LoginAdimim/login_page_adimim.dart';
import 'package:app_avaliacao_ifma/LoginAluno/login_page_aluno.dart';
import 'package:app_avaliacao_ifma/homeAdimin/home_adimim.dart';
import 'package:app_avaliacao_ifma/homeAdimin/turmas.dart';
import 'package:app_avaliacao_ifma/homeAluno/home_aluno.dart';
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta1.dart';
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta10.dart';
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta11.dart';
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta12.dart';
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta13.dart';
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta14.dart';
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta2.dart';
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta3.dart';
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta4.dart';
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta5.dart';
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta6.dart';
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta7.dart';
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta8.dart';
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta9.dart';
import 'package:app_avaliacao_ifma/homeAluno/sites/Ifma.dart';
import 'package:app_avaliacao_ifma/homeAluno/sites/Suap.dart';
import 'package:app_avaliacao_ifma/tela_de_carregamento/carregamnto.dart';
import 'package:app_avaliacao_ifma/tela_boas_vindas.dart/boas_vindas.dart';
import 'package:flutter/material.dart';

class Routes{
  var routes = <String,WidgetBuilder>{
    LoadingPage.tag: (context) => LoadingPage(),
    LoginPageAluno.tag: (context) => LoginPageAluno(),
    BoasVindasAluno.tag: (context) => BoasVindasAluno(),
    LoginPageAdim.tag: (context) => LoginPageAdim(),
    HomeAluno.tag: (context) => HomeAluno(),
    HomeAdimim.tag: (context) => HomeAdimim(),
    Pergunta1.tag: (context) => Pergunta1(),
    Pergunta2.tag: (context) => Pergunta2(),
    Pergunta3.tag: (context) => Pergunta3(),
    Pergunta4.tag: (context) => Pergunta4(),
    Pergunta5.tag: (context) => Pergunta5(),
    Pergunta6.tag: (context) => Pergunta6(),
    Pergunta7.tag: (context) => Pergunta7(),
    Pergunta8.tag: (context) => Pergunta8(),
    Pergunta9.tag: (context) => Pergunta9(),
    Pergunta10.tag: (context) => Pergunta10(),
    Pergunta11.tag: (context) => Pergunta11(),
    Pergunta12.tag: (context) => Pergunta12(),
    Pergunta13.tag: (context) => Pergunta13(),
    Pergunta14.tag: (context) => Pergunta14(),
    Turmas.tag: (context) => Turmas(),
    Suap.tag: (context) => Suap(),
    IFMA.tag: (context) => IFMA(),
  };
}