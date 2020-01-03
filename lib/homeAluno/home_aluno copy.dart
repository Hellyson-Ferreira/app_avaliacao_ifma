import 'package:app_avaliacao_ifma/homeAluno/drawerAluno.dart';
import 'package:flutter/material.dart';

class HomeAluno2 extends StatefulWidget {
  static String tag = 'home-page-aluno2';

  @override
  _HomeAluno2State createState() => _HomeAluno2State();
}

class _HomeAluno2State extends State<HomeAluno2> with SingleTickerProviderStateMixin{
  TabController _tabController;
  var _appBarText = Text('Home');
  
  static List<Widget> _kTabPages = <Widget>[
    HomePage(),
    BusinessPage(),
    SchoolPage(),
  ];
   static const _ktabs = <Tab>[
     Tab(
       icon: Icon(Icons.home,
       color: Colors.black54,
       ),
       //text: 'fkdkfk',

     ),
     Tab(
       icon: Icon(Icons.cloud_download),
       //text: 'fkdkfk',

     ),
     Tab(
       icon: Icon(Icons.info),
       //text: 'fkdkfk',

     )

   ];
   @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: _kTabPages.length, 
      
    );
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
    
  }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: Text(
          'Aluno ',
          style: TextStyle(
            fontSize: 20

        ),),
      ),
      body: TabBarView(
        children: _kTabPages,
        controller: _tabController,
      ),
      drawer: DrawerAluno(),
      bottomNavigationBar: Material(
        color: Colors.green,
        child: TabBar(
          tabs: _ktabs,
          controller: _tabController,
        ),
        

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
    return Center(
      child: Icon(
      Icons.cloud_download, size: 150
    ),
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