import 'package:app_avaliacao_ifma/homeAdimin/drawerAdimim.dart';
import 'package:flutter/material.dart';

class HomeAdimim extends StatefulWidget {
  static String tag = 'home-page-adimim';

  @override
  _HomeAdimimState createState() => _HomeAdimimState();
}

class _HomeAdimimState extends State<HomeAdimim> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adiministrador'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
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
    return Icon(
      Icons.home, size: 150
    );
  }
}

class BusinessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.cloud_download, size: 150
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