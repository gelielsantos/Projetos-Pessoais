import 'package:flutter/material.dart';

class Justiceirofoto extends StatefulWidget {
  const Justiceirofoto({Key? key}) : super(key: key);

  @override
  _JusticeirofotoState createState() => _JusticeirofotoState();
}

class _JusticeirofotoState extends State<Justiceirofoto> {
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
                  child: Text("Justiceiro 1"),
                ),
                Tab(
                  child: Text("Justiceiro 2"),
                ),
                Tab(
                  child: Text("Justiceiro 3"),
                ),
                Tab(
                  child: Text("Justiceiro 4"),
                ),
              ],
            ),
            title: Text("Justiceiro"),
            backgroundColor: Color(0xFFED1D24),
          ),
          body: Container(
            child: TabBarView(
                children: <Widget>[
                  Image.asset("imagens/justiceiro1.jpg"),
                  Image.asset("imagens/justiceiro2.jpg"),
                  Image.asset("imagens/justiceiro3.jpg"),
                  Image.asset("imagens/justiceiro4.jpg"),
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