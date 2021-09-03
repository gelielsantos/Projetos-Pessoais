import 'package:flutter/material.dart';

class Ultronfoto extends StatefulWidget {
  const Ultronfoto({Key? key}) : super(key: key);

  @override
  _UltronfotoState createState() => _UltronfotoState();
}

class _UltronfotoState extends State<Ultronfoto> {
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
                  child: Text("Ultron 1"),
                ),
                Tab(
                  child: Text("Ultron 2"),
                ),
                Tab(
                  child: Text("Ultron 3"),
                ),
                Tab(
                  child: Text("Ultron 4"),
                ),
              ],
            ),
            title: Text("Ultron"),
            backgroundColor: Color(0xFFED1D24),
          ),
          body: Container(
            child: TabBarView(
                children: <Widget>[
                  Image.asset("imagens/ultron1.jpg"),
                  Image.asset("imagens/ultron2.png"),
                  Image.asset("imagens/ultron3.jpg"),
                  Image.asset("imagens/ultron4.png"),
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