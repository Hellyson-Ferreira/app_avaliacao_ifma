import 'dart:async';
import 'package:app_avaliacao_ifma/LoginAluno/login_page_aluno.dart';
import 'package:app_avaliacao_ifma/homeAluno/components/AlertDialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'components/drawerAluno.dart';

class HomeAluno extends StatefulWidget {
  @override
  _HomeAlunoState createState() => _HomeAlunoState();
}

class _HomeAlunoState extends State<HomeAluno> {
  int _selectedIndex = 0;
  String image = 'assets/ifma/IFMA.jpg';
  String title = 'Avaliação Docente';
  double ex = 160.0;
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
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPageAluno()));
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
              expandedHeight: ex,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("$title"),
                background: Image.asset(image, fit: BoxFit.fill),
              ),
            ),
            SliverFillRemaining(
              child: Center(
                child: _widgetOptions.elementAt(_selectedIndex),
              ),
            ),
          ],
        ),
        drawer: DrawerAluno(),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 240,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Início'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              title: Text('Sobre'),
            ),
          ],
          currentIndex: _selectedIndex,
          showUnselectedLabels: false,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  // @override
  // void initState() {
  //   super.initState();
  //   flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  //   var android = AndroidInitializationSettings('@drawable/icon');
  //   var iOS = IOSInitializationSettings();
  //   var initSetttings = InitializationSettings(android, iOS);
  //   flutterLocalNotificationsPlugin.initialize(initSetttings,
  //       onSelectNotification: onSelectNotification);
  // }

  Future onSelectNotification(String payload) async {
    debugPrint("payload : $payload");
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Aviso'),
        content: Text('$payload'),
      ),
    );
  }

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
              Hero(
                tag: 'img1',
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/gifs/users.gif'))),
                ),
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
                    child: Text('Lembrete'),
                    onPressed: () {
                      //showNotification();
                    },
                  ),
                  FlatButton(
                    child: Text('Iniciar'),
                    // onPressed: null,
                    onPressed: () {
                      showAlertDialog1ALuno(context);
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

  // showNotification() async {
  //   var android = new AndroidNotificationDetails(
  //       'channel id', 'channel NAME', 'CHANNEL DESCRIPTION',
  //       priority: Priority.High, importance: Importance.Max);
  //   var iOS = new IOSNotificationDetails();
  //   var platform = new NotificationDetails(android, iOS);
  //   await flutterLocalNotificationsPlugin.show(
  //       0, 'Lembrete', 'Você ainda não avaliou os professores.', platform,
  //       payload: 'Você ainda não avaliou os professores.');
  // }
}

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.info, size: 150);
  }
}
