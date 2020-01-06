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
  bool _pinned = true;
  bool _snap = true;
  bool _floating = true;
  int _selectedIndex = 0;
  static const double IconSize = 200; 
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    BusinessPage(),
    SchoolPage(),
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
            pinned: this._pinned,
            snap: this._snap,
            floating: this._floating,
            expandedHeight: 160.0,
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
            icon: Icon(Icons.event),
            title: Text('calendario'),
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
    return ListView(
       //padding: EdgeInsets.all(10),
       children: <Widget>[
          Card(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              //SizedBox(height: 60,),
              SizedBox(
                height: 100.0,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.asset(
                        'assets/img.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom:16.0,
                      left: 16.0,
                      right: 16.0,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Avaliação de Professores',
                          style: Theme.of(context)
                              .textTheme
                              .headline
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
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
    );
  
  }
}

class BusinessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.event, size: 150
    );
  }
}

class SchoolPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.info, size: 150
    );
  }
}