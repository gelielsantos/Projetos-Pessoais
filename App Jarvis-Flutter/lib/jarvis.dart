import 'package:flutter/material.dart';
import 'package:jarvis/armadura.dart';
import 'package:jarvis/inicio.dart';
import 'package:jarvis/shield.dart';
import 'package:jarvis/spider.dart';
import 'package:jarvis/cap.dart';

class Jarvis extends StatelessWidget {
  const Jarvis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opções para escolher'),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: Text(
              'Armaduras',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Armadura()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.add_moderator,
              color: Colors.white,
            ),
            title: Text(
              'Shield',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Shield()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.biotech_sharp,
              color: Colors.white,
            ),
            title: Text(
              'Homem-Aranha',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Spider()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.ac_unit,
              color: Colors.white,
            ),
            title: Text(
              'Picolé (Capitão América)',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cap()));
            },
          ),
          Padding(padding: EdgeInsets.only(right: 40, left: 40),
          child: Image.asset(
            "imagens/jarvis2.png",
            fit: BoxFit.cover,
          ),
          ),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Inicio()));
              },
              icon: Icon(Icons.arrow_back),
              label: Text('Voltar'),
            ),
          ),
        ],
      ),
    );
  }
}
