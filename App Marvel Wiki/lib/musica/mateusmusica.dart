import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MateusMusica extends StatefulWidget {
  const MateusMusica({Key? key}) : super(key: key);

  @override
  _MateusMusicaState createState() => _MateusMusicaState();
}

//Instanciando a classe
AudioPlayer musica = AudioPlayer();

//declarando um método para executar a midia
_rodarMusica() async {
  String url = "musicas/mateustema.mp3";

  int resultado = await musica.play(url);

  if (resultado == 1) {
    print("ok");
  } else {
    print("Não rodou a música");
  }
}

class _MateusMusicaState extends State<MateusMusica> {
  @override
  Widget build(BuildContext context) {
    _rodarMusica();
    return Container();
  }
}