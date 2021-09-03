import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class GelielMusica extends StatefulWidget {
  const GelielMusica({Key? key}) : super(key: key);

  @override
  _GelielMusicaState createState() => _GelielMusicaState();
}

//Instanciando a classe
AudioPlayer musica = AudioPlayer();

//declarando um método para executar a midia
_rodarMusica() async {
  String url = "musicas/gelieltema.mp3";

  int resultado = await musica.play(url);

  if (resultado == 1) {
    print("ok");
  } else {
    print("Não rodou a música");
  }
}

class _GelielMusicaState extends State<GelielMusica> {
  @override
  Widget build(BuildContext context) {
    _rodarMusica();
    return Container();
  }
}