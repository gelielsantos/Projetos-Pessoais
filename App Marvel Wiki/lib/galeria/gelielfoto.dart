import 'package:flutter/material.dart';

class Gelielfoto extends StatefulWidget {
  const Gelielfoto({Key? key}) : super(key: key);

  @override
  _GelielfotoState createState() => _GelielfotoState();
}

class _GelielfotoState extends State<Gelielfoto> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(child: Text("Tiktok"),),
                Tab(child: Text("Insta"),),
                Tab(child: Text("Youtube"),),
              ],
            ),
            title: Text("Fotos do Geliel"),
            backgroundColor: Color(0xFFED1D24),
          ),
          body: Container(
            child: TabBarView(
                children: <Widget>[
                  Image.asset("imagens/gtiktok.png"),
                  Image.asset("imagens/ginsta.png"),
                  Image.asset("imagens/gyoutube.png"),
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