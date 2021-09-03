import 'package:flutter/material.dart';

class Thanosfoto extends StatefulWidget {
  const Thanosfoto({Key? key}) : super(key: key);

  @override
  _ThanosfotoState createState() => _ThanosfotoState();
}

class _ThanosfotoState extends State<Thanosfoto> {
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
                  child: Text("Thanos 1"),
                ),
                Tab(
                  child: Text("Thanos 2"),
                ),
                Tab(
                  child: Text("Thanos 3"),
                ),
                Tab(
                  child: Text("Thanos 4"),
                ),
              ],
            ),
            title: Text("Thanos"),
            backgroundColor: Color(0xFFED1D24),
          ),
          body: Container(
            child: TabBarView(
                children: <Widget>[
                  Image.asset("imagens/thanosarmadura.jpeg"),
                  Image.asset("imagens/thanos2.jpeg"),
                  Image.asset("imagens/thanos3.jpeg"),
                  Image.asset("imagens/thanos4.jpeg"),
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