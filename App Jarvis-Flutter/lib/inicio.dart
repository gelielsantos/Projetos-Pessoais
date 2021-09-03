import 'package:flutter/material.dart';
import 'package:jarvis/jarvis.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("J.A.R.V.I.S."),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Image.asset(
            "imagens/jarvis1.jpg",
            fit: BoxFit.cover,
          ),
          Center(
            child: Text(
              "Bem-Vindo senhor Stark",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 30),
            child: Center(
              child: Text(
                "Escolha o heroi ou sua armadura preferida",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
            Padding(padding: EdgeInsets.only(right: 40, left: 40),
              child: Image.asset(
                "imagens/herois.png",
              ),
            ),

          Padding(padding: EdgeInsets.all(32)),
          Center(
              child: ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Jarvis()));
            },
            icon: Icon(Icons.work_outlined),
            label: Text('Faça sua escolha'),
          ))
        ],
      ),
    );
  }
}
