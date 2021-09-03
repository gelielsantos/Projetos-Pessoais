import 'package:flutter/material.dart';

class Renanfoto extends StatefulWidget {
  const Renanfoto({Key? key}) : super(key: key);

  @override
  _RenanfotoState createState() => _RenanfotoState();
}

class _RenanfotoState extends State<Renanfoto> {
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
                Tab(child: Text("Instagram"),),
                Tab(child: Text("Telegram"),),
                Tab(child: Text("WhatsApp"),),
              ],
            ),
            title: Text("Foto do Renan"),
            backgroundColor: Color(0xFFED1D24),
          ),
          body: Container(
            child: TabBarView(
                children: <Widget>[
                  Image.asset("imagens/rinsta.jpeg"),
                  Image.asset("imagens/telegram.png"),
                  Image.asset("imagens/whatsapp.png"),
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