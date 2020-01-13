import 'package:app_avaliacao_ifma/LoginAluno/login_page_aluno.dart';
import 'package:app_avaliacao_ifma/homeAluno/drawerAluno.dart';
import 'package:app_avaliacao_ifma/homeAluno/perguntas/pergunta1.dart';
import 'package:flutter/material.dart';

class HomeAluno extends StatefulWidget {
  static String tag = 'home-page-aluno';

  @override
  _HomeAlunoState createState() => _HomeAlunoState();
}

class _HomeAlunoState extends State<HomeAluno> {
  int _selectedIndex = 0;
  static const double IconSize = 200; 
  static List<Widget> _widgetOptions = <Widget>[
    
    HomePage(),
    InfoPage(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

   Future<bool> _onBackPressed() {
    Navigator.of(context).pushNamed(LoginPageAluno.tag,);
    return null;
  }

  @override
  Widget build(BuildContext context) {
   return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 146.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Home Aluno"),
              background: Image.asset(
                'assets/IFMA.jpg',
                fit: BoxFit.fill
              ),
            ),
          ),
          // If the main content is a list, use SliverList instead.
          SliverFillRemaining(
            child: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
          ),
        ],
      ),
      drawer: DrawerAluno(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
      
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('Sobre'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    ),
   );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Column(
       children: <Widget>[
         Card(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/users.gif')
                  )
                ),

              ),
              Text(
                    'Avaliação de Professores',
                    style: Theme.of(context)
                        .textTheme
                        .headline
                        .copyWith(color: Colors.black),
                        ),
              ButtonBar(
                alignment: MainAxisAlignment.end,
                children: <Widget>[
                
                  FlatButton(
                    child: Text('Lembrete'),
                    onPressed: () {
                      
                    },
                  ),
                  FlatButton(
                    child: Text('Iniciar'),
                    onPressed: () {
                      //Navigator.pop(context);
                      Navigator.of(context).pushNamed(Pergunta1.tag);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        
      ],
    // ),
    );
  }
}


class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.info, size: 150
    );
  }
}