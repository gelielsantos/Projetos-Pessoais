import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class DeadpoolMusica extends StatefulWidget {
  const DeadpoolMusica({Key? key}) : super(key: key);

  @override
  _DeadpoolMusicaState createState() => _DeadpoolMusicaState();
}

//Instanciando a classe
AudioPlayer musica = AudioPlayer();

//declarando um método para executar a midia
_rodarMusica() async {
  String url = "musicas/deadpooltema.mp3";

  int resultado = await musica.play(url);

  if (resultado == 1) {
    print("ok");
  } else {
    print("Não rodou a música");
  }
}

class _DeadpoolMusicaState extends State<DeadpoolMusica> {
  @override
  Widget build(BuildContext context) {
    _rodarMusica();
    return Container();
  }
}