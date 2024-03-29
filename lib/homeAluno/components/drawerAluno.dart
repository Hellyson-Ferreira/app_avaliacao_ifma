import 'package:app_avaliacao_ifma/LoginAluno/login_page_aluno.dart';
import 'package:app_avaliacao_ifma/homeAluno/sites/Ifma.dart';
import 'package:app_avaliacao_ifma/homeAluno/sites/Suap.dart';
import 'package:app_avaliacao_ifma/homeAluno/sites/infor.dart';
import 'package:flutter/material.dart';

class DrawerAluno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 38,
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Theme.of(context).primaryColor,
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
                              // image: AssetImage('assets/users/hellyson.jpg'),
                              image: AssetImage('assets/users/felipe.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      // 'Hellyson Ferreira',
                      'Felipe Torres',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    Text(
                      // '20181IC.CAX0007',
                      '20181IC.CAX0005',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
                leading: Icon(Icons.web),
                title: Text(
                  'Portal IFMA',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>IFMA()));
                }),

            ListTile(
                leading: Icon(Icons.first_page),
                title: Text(
                  'Suap',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Suap()));
                }
            ),

            ListTile(
                leading: Icon(Icons.help),
                title: Text(
                  'Sobre',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => InforPage()));
                }
            ),

            Divider(
              color: Colors.grey[300],
            ),

            ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text(
                  'Sair',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPageAluno()));
                }
            )
          ],
        ));
  }
}
