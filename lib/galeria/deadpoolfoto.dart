import 'package:flutter/material.dart';

class Deadpoolfoto extends StatefulWidget {
  const Deadpoolfoto({Key? key}) : super(key: key);

  @override
  _DeadpoolfotoState createState() => _DeadpoolfotoState();
}

class _DeadpoolfotoState extends State<Deadpoolfoto> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text("Deadpool 1"),
                ),
                Tab(
                  child: Text("Deadpool 2"),
                ),
                Tab(
                  child: Text("Deadpool 3"),
                ),
                Tab(
                  child: Text("Deadpool 4"),
                ),
              ],
            ),
            title: Text("Deadpool"),
            backgroundColor: Color(0xFFED1D24),
          ),
          body: Container(
            child: TabBarView(
                children: <Widget>[
                  Image.asset("imagens/deadpool1.jpg"),
                  Image.asset("imagens/deadpool2.jpg"),
                  Image.asset("imagens/deadpool3.jpg"),
                  Image.asset("imagens/deadpool4.jpg"),
                ]
            ),
          ),
          endDrawer: Drawer(
            child: Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFED1D24),
            elevation: 20,
            shadowColor: Colors.black,),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: Colors.white,),
              label: Text('Voltar'),
            ),
          ),
          ),
        ),
      ),
    );
  }
}