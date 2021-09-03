import 'package:flutter/material.dart';

class Armadura extends StatefulWidget {
  const Armadura({Key? key}) : super(key: key);

  @override
  _ArmaduraState createState() => _ArmaduraState();
}

class _ArmaduraState extends State<Armadura> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(child: Text("Mark 3"),),
                Tab(child: Text("Mark 6"),),
                Tab(child: Text("Mark 7"),),
                Tab(child: Text("Mark 42"),),
              ],
            ),
            title: Text("Armaduras"),
            backgroundColor: Colors.blue,
          ),
          body: Container(
            child: TabBarView(
                children: <Widget>[
                  Image.asset("imagens/mark3.png"),
                  Image.asset("imagens/mark4.png"),
                  Image.asset("imagens/mark7.png"),
                  Image.asset("imagens/mark42.png"),
                ]
            ),
          ),
          endDrawer: Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              label: Text('Voltar'),
            ),
          ),
        ),
      ),
    );
  }
}