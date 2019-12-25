import 'package:app_avaliacao_ifma/LoginAluno/login_page_aluno.dart';
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
            leading: Icon(Icons.person),
            title: Text(
              'Perfil',
              style: TextStyle(
                fontSize: 18,

            ),
            ),
            onTap: (){
               //Navigator.of(context).pushNamed(HomeAluno.tag,);
            }
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
               //Navigator.of(context).pushNamed(HomeAluno.tag,);
            }
          ),
          ListTile(
            leading: Icon(Icons.file_download),
            title: Text(
              'Downloads',
              style: TextStyle(
                fontSize: 18,

            ),
            ),
            onTap: (){
               //Navigator.of(context).pushNamed(HomeAluno.tag,);
            }
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Configurações',
              style: TextStyle(
                fontSize: 18,

            ),
            ),
            onTap: (){
               //Navigator.of(context).pushNamed(HomeAluno.tag,);
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
      )
    );
  }
}