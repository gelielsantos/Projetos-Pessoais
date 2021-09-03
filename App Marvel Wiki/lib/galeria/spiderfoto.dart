import 'package:flutter/material.dart';

class Spiderfoto extends StatefulWidget {
  const Spiderfoto({Key? key}) : super(key: key);

  @override
  _SpiderfotoState createState() => _SpiderfotoState();
}

class _SpiderfotoState extends State<Spiderfoto> {
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
                  child: Text("Lutador"),
                ),
                Tab(
                  child: Text("Traje furtivo"),
                ),
                Tab(
                  child: Text("Aranha de Ferro"),
                ),
                Tab(
                  child: Text("Espetacular"),
                ),
              ],
            ),
            title: Text("Spiderman"),
            backgroundColor: Color(0xFFED1D24),
          ),
          body: Container(
            child: TabBarView(
                children: <Widget>[
                  Image.asset("imagens/homi1.jpeg"),
                  Image.asset("imagens/homi2.jpeg"),
                  Image.asset("imagens/homi3.jpeg"),
                  Image.asset("imagens/homi4.jpeg"),
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