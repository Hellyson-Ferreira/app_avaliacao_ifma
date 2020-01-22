import 'package:app_avaliacao_ifma/homeAdimin/drawerAdimim.dart';
import 'package:flutter/material.dart';

class HomeAdimim extends StatefulWidget {
  static String tag = 'home-page-adimim';

  @override
  _HomeAdimimState createState() => _HomeAdimimState();
}

class _HomeAdimimState extends State<HomeAdimim> {
  int _selectedIndex = 0;
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: this._pinned,
            snap: this._snap,
            floating: this._floating,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Administrador'),
              background: Image.asset(
                'assets/IFMA.jpg',
                fit: BoxFit.fill,
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
      drawer: DrawerAdimim(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud_download ),
            title: Text('Gráficos'),
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
    );
  }
  
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
           Card(
             elevation: 24,
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
                      child: Text('Tornar disponivel'),
                      onPressed: () {
                        
                      },
                    ),
                    FlatButton(
                      child: Text('Tornar indiponivel'),
                      // onPressed: null,
                      onPressed: () {
                        //Navigator.pop(context);
                      },
                    ),
                    FlatButton(
                      child: Text('Notificar alunos'),
                      // onPressed: null,
                      onPressed: () {
                        //Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],

      ),
    );
  }
}

class BusinessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.cloud_download,
      size: 150
    );
  }
}

class SchoolPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.info, 
      size: 150
    );
  }
}