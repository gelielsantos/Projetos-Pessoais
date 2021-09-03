import 'package:flutter/material.dart';
import 'package:jarvis/jarvis.dart';

class Spider extends StatelessWidget {
  const Spider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homem-Aranha"),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Image.asset(
            "imagens/spider.jpg",
            fit: BoxFit.cover,
          ),
          Padding(padding: EdgeInsets.all(10)),
          Center(
            child: Text(
              "Ligar para o Garoto",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Column(
            children: [
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Spider()));
                  },
                  icon: Icon(Icons.call),
                  label: Text('Assemble'),
                ),),
              Padding(padding: EdgeInsets.all(10)),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Jarvis()));
                  },
                  icon: Icon(Icons.arrow_back),
                  label: Text('Voltar'),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
