import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class SpiderMusica extends StatefulWidget {
  const SpiderMusica({Key? key}) : super(key: key);

  @override
  _SpiderMusicaState createState() => _SpiderMusicaState();
}

//Instanciando a classe
AudioPlayer musica = AudioPlayer();

//declarando um método para executar a midia
_rodarMusica() async {
  String url = "musicas/spidermantema.mp3";

  int resultado = await musica.play(url);

  if (resultado == 1) {
    print("ok");
  } else {
    print("Não rodou a música");
  }
}

class _SpiderMusicaState extends State<SpiderMusica> {
  @override
  Widget build(BuildContext context) {
    _rodarMusica();
    return Container();
  }
}