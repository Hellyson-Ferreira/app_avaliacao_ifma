import 'dart:async';
import 'package:app_avaliacao_ifma/LoginAluno/login_page_aluno.dart';
import 'package:app_avaliacao_ifma/homeAdimin/AlertDialogs.dart';
import 'package:app_avaliacao_ifma/homeAluno/drawerAluno.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';


class HomeAluno extends StatefulWidget {
  static String tag = 'home-page-aluno';

  @override
  _HomeAlunoState createState() => _HomeAlunoState();
}

class _HomeAlunoState extends State<HomeAluno> {
  int _selectedIndex = 0;
  static const double IconSize = 200; 
  String image = 'assets/IFMA.jpg';
  String title = 'Avaliação Docente';
  double ex = 160.0;
  static List<Widget> _widgetOptions = <Widget>[
    
    HomePage(),
    InfoPage(),

  ];

  void _onItemTapped(int index) {
    if(index==1){
      ex = 0;
    }
    else{
      ex = 160;
    }
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
            // snap: true,
            floating: true,
            expandedHeight: ex,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("$title"),
              background: Image.asset(
                image,
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
            title: Text('Início'),
          ),
      
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('Sobre'),
          ),
        ],

        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[400],
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
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  @override
  void initState() {
    super.initState();
    flutterLocalNotificationsPlugin =  FlutterLocalNotificationsPlugin();
    var android = AndroidInitializationSettings('@drawable/icon');
    var iOS =  IOSInitializationSettings();
    var initSetttings =  InitializationSettings(android, iOS);
    flutterLocalNotificationsPlugin.initialize(initSetttings,onSelectNotification: onSelectNotification);
  }
  Future onSelectNotification(String payload) async {
    debugPrint("payload : $payload");
    showDialog(
      context: context,
      builder: (_) =>  AlertDialog(
        title:  Text('Aviso'),
        content:  Text('$payload'),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
         children: <Widget>[
           Card(
            elevation: 24,
            color: Colors.white,
            child: Wrap(
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
                      '  Avaliação de Professores',
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
                        showNotification();
                        
                      },
                    ),
                    FlatButton(
                      child: Text('Iniciar'),
                      // onPressed: null,
                      onPressed: () {
                        showAlertDialog4(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          
        ],
      // ),
      ),
    );
  }
   showNotification() async {
    var android = new AndroidNotificationDetails(
        'channel id', 'channel NAME', 'CHANNEL DESCRIPTION',
        priority: Priority.High,importance: Importance.Max
    );
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android, iOS);
    await flutterLocalNotificationsPlugin.show(
        0, 'Lembrete', 'Você ainda não avaliou os professores.', platform,
        payload: 'Você ainda não avaliou os professores.');
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