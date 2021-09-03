import 'package:flutter/material.dart';

class Mateusfoto extends StatefulWidget {
  const Mateusfoto({Key? key}) : super(key: key);

  @override
  _MateusfotoState createState() => _MateusfotoState();
}

class _MateusfotoState extends State<Mateusfoto> {
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
                  child: Text("Instagram "),
                ),
                Tab(
                  child: Text("Teu Site Aqui"),
                ),
                Tab(
                  child: Text("Pix"),
                ),
                Tab(
                  child: Text("JESUS IS KING!"),
                ),
              ],
            ),
            title: Text("Fotos do Mateus"),
            backgroundColor: Color(0xFFED1D24),
          ),
          body: Container(
            child: TabBarView(
                children: <Widget>[
                  Image.asset("imagens/insmat.jpg"),
                  Image.asset("imagens/teusite.png"),
                  Image.asset("imagens/pix.png"),
                  Image.asset("imagens/jesus.jpg"),
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