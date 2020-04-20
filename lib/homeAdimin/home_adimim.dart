import 'package:flutter/material.dart';

import 'components/AlertDialogs.dart';
import 'components/drawerAdimim.dart';

class HomeAdimim extends StatefulWidget {
  @override
  _HomeAdimimState createState() => _HomeAdimimState();
}

class _HomeAdimimState extends State<HomeAdimim> {
  int _selectedIndex = 0;
  double ex = 160.0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Pies(),
    Help(),
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
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight:ex,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Administrador'),
              background: Image.asset(
                'assets/ifma/IFMA.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          // SliverList(
          //   delegate: SliverChildListDelegate(
          //     <Widget>[
          //       Center(
          //         child: _widgetOptions.elementAt(_selectedIndex)
          //       )
          //     ],
          //   ),
          // )
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
        elevation: 240,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud_download),
            title: Text('Gráficos'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            title: Text('Ajuda'),
          ),
        ],
        currentIndex: _selectedIndex,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Card(
          margin: EdgeInsets.only(right: 15.0, left: 15.0),
          elevation: 24,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:15),
                height: 250,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/gifs/users.gif'))),
              ),
              Text(
                'Avaliação de Professores',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.black),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    child: Text('Tornar disponivel'),
                    onPressed: () {
                      showAlertDialog1Adm(context);
                    },
                  ),
                  FlatButton(
                    child: Text('Tornar indiponivel'),
                    // onPressed: null,
                    onPressed: () {
                      showAlertDialog2Adm(context);
                      //Navigator.pop(context);
                    },
                  ),
                  FlatButton(
                    child: Text('Notificar alunos'),
                    // onPressed: null,
                    onPressed: () {
                      showAlertDialog3Adm(context);
                      //Navigator.pop(context);
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

class Pies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      // direction: Axis.vertical,
      children: <Widget>[
        Card(
          margin: EdgeInsets.only(right: 15.0, left: 15.0),
          elevation: 24,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:15),
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/ifma/grafico.png'))),
              ),
              Text(
                'Gráficos',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.black),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    child: Text('Gerar Gráficos'),
                    onPressed: () {
                      // showAlertDialog1(context);
                    },
                  ),
                  FlatButton(
                    child: Text('Fazer Download'),
                    // onPressed: null,
                    onPressed: () {
                      // showAlertDialog2(context);
                      //Navigator.pop(context);
                    },
                  ),
                  FlatButton(
                    child: Text('Enviar para o Drive'),
                    // onPressed: null,
                    onPressed: () {
                      // showAlertDialog3(context);
                      //Navigator.pop(context);
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

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.help, size: 150);
  }
}
