import 'package:app_avaliacao_ifma/homeAdimin/PageshomeAdim/Editor%20de%20perguntas/Editor-de-perguntas.dart';
import 'package:app_avaliacao_ifma/homeAdimin/PageshomeAdimi/grafico.dart';
import 'package:app_avaliacao_ifma/homeAdimin/PageshomeAdimi/turmas.dart';
import 'package:app_avaliacao_ifma/homeAluno/perguntas/perguntas.dart';
import 'package:flutter/material.dart';
import 'package:app_avaliacao_ifma/homeAluno/home_aluno.dart';
import 'package:app_avaliacao_ifma/homeAluno/sites/Ifma.dart';
import 'package:app_avaliacao_ifma/homeAluno/sites/Suap.dart';
import 'package:app_avaliacao_ifma/homeAluno/sites/infor.dart';
import 'package:app_avaliacao_ifma/homeAdimin/home_adimim.dart';

import 'package:app_avaliacao_ifma/LoginAluno/login_page_aluno.dart';
import 'package:app_avaliacao_ifma/LoginAdimim/login_page_adimim.dart';

import 'package:app_avaliacao_ifma/tela_de_carregamento/carregamnto.dart';
import 'package:app_avaliacao_ifma/tela_boas_vindas.dart/boas_vindas.dart';
import 'package:app_avaliacao_ifma/N%C3%A3o%20consigo%20entrar/erroAoEntrar.dart';



class Routes{
  var routes = <String,WidgetBuilder>{
    LoadingPage.tag: (context) => LoadingPage(),
    LoginPageAluno.tag: (context) => LoginPageAluno(),
    LoginPageAdim.tag: (context) => LoginPageAdim(),
    
    ResetPasswordPage.tag: (context) => ResetPasswordPage(),
    InforPage.tag: (context) => InforPage(),

    BoasVindasAluno.tag: (context) => BoasVindasAluno(),

    HomeAluno.tag: (context) => HomeAluno(),
    HomeAdimim.tag: (context) => HomeAdimim(),
    
    Perguntas.tag: (context) => Perguntas(),
    
    Turmas.tag: (context) => Turmas(),
    Suap.tag: (context) => Suap(''),
    IFMA.tag: (context) => IFMA(''),
    
    Graficos.tag: (context) => Graficos(),
    EditorPerguntas.tag: (context) => EditorPerguntas(),
  };
}