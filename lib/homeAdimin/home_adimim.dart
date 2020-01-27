import 'package:app_avaliacao_ifma/homeAdimin/AlertDialogs.dart';
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
    Pies(),
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
      child: Wrap(
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
                        showAlertDialog1(context);
                        
                      },
                    ),
                    FlatButton(
                      child: Text('Tornar indiponivel'),
                      // onPressed: null,
                      onPressed: () {
                        showAlertDialog2(context);
                        //Navigator.pop(context);
                      },
                    ),
                    FlatButton(
                      child: Text('Notificar alunos'),
                      // onPressed: null,
                      onPressed: () {
                        showAlertDialog3(context);
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

class Pies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // direction: Axis.vertical,
        children: <Widget>[
          Icon(
            Icons.file_download,
            size: 200,
          ),
          Wrap(
            spacing: 10.0,
            runSpacing: 4.0,
            children: <Widget>[
              RaisedButton(
                child: Text('Gerar graficos',style: TextStyle(color: Colors.white),),
                onPressed: (){},
                color: Colors.green,

              ),
          RaisedButton(
            child: Text('Fazer Download',style: TextStyle(color: Colors.white),),
            onPressed: (){},
            color: Colors.green,

          ),
          RaisedButton(
            child: Text('Enviar para Drive',style: TextStyle(color: Colors.white),),
            onPressed: (){},
            color: Colors.green,

          ),
            ],
          ),
        ],
      ),
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