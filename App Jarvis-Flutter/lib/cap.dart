import 'package:flutter/material.dart';
import 'package:jarvis/jarvis.dart';

class Cap extends StatelessWidget {
  const Cap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Capitão América"),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Image.asset(
            "imagens/cap.jpg",
            fit: BoxFit.cover,
          ),
          Padding(padding: EdgeInsets.all(10)),
          Center(
            child: Text(
              "Ligar para o Picolé",
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
                        context, MaterialPageRoute(builder: (context) => Cap()));
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
