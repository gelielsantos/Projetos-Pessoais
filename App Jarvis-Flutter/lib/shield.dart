import 'package:flutter/material.dart';

class Shield extends StatefulWidget {
  const Shield({Key? key}) : super(key: key);

  @override
  _ShieldState createState() => _ShieldState();
}

class _ShieldState extends State<Shield> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(child: Text("Nick Fury"),),
                Tab(child: Text("Maria Hill"),),
              ],
            ),
            title: Text("S.H.I.E.L.D."),
            backgroundColor: Colors.blue,
          ),
          body: Container(
            child: TabBarView(
                children: <Widget>[
                  Image.asset("imagens/nick.png"),
                  Image.asset("imagens/maria.png"),
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