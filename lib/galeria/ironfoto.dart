import 'package:flutter/material.dart';

class Ironfoto extends StatefulWidget {
  const Ironfoto({Key? key}) : super(key: key);

  @override
  _IronfotoState createState() => _IronfotoState();
}

class _IronfotoState extends State<Ironfoto> {
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
                Tab(child: Text("Mark 3"),),
                Tab(child: Text("Mark 6"),),
                Tab(child: Text("Mark 7"),),
                Tab(child: Text("Mark 42"),),
              ],
            ),
            title: Text("Armaduras"),
            backgroundColor: Color(0xFFED1D24),
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