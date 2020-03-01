import 'package:app_avaliacao_ifma/LoginAluno/login_page_aluno.dart';
import 'package:app_avaliacao_ifma/homeAdimin/downloads.dart';
import 'package:app_avaliacao_ifma/homeAdimin/turmas.dart';
import 'package:app_avaliacao_ifma/homeAluno/sites/Ifma.dart';
import 'package:app_avaliacao_ifma/homeAluno/sites/Suap.dart';
import 'package:flutter/material.dart';

class DrawerAdimim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color:Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/filho.jpg'),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                Text(
                  'Raimundo Filho',
                   style: TextStyle(
                     fontSize: 22,
                     color: Colors.white

                ),
                ),
                Text(
                  'raimundofilho@ifma.edu.br',
                   style: TextStyle(
                     color: Colors.white

                ),)
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text(
              'Turmas',
              style: TextStyle(
                fontSize: 18,

            ),
            ),
            onTap: (){
               Navigator.of(context).pushNamed(Turmas.tag);
            }
          ),
          ListTile(
            leading: Icon(Icons.format_align_left),
            title: Text(
              'Editar Perguntas',
              style: TextStyle(
                fontSize: 18,

            ),
            ),
            onTap: (){
               Navigator.of(context).pushNamed(Downloads.tag,);
            }
          ),
           ListTile(
            leading: Icon(Icons.web),
            title: Text(
              'Portal IFMA',
              style: TextStyle(
                fontSize: 18,
            ),
            ),
            onTap: (){
               Navigator.of(context).pushNamed(IFMA.tag,);
            }
          ),

          ListTile(
            leading: Icon(Icons.first_page),
            title: Text(
              'Suap',
              style: TextStyle(
                fontSize: 18,
            ),
            ),
            onTap: (){
               Navigator.of(context).pushNamed(Suap.tag,);
            }
          ),
          new Divider(
            color: Colors.grey,
          ),
            ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text(
              'Sair',
              style: TextStyle(
                fontSize: 18,

            ),
            ),
            onTap: (){
               Navigator.of(context).pushNamed(LoginPageAluno.tag,);
            }
            

          )
        ],
      ),
    );
  }
}