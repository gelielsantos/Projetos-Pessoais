import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class RenanMusica extends StatefulWidget {
  const RenanMusica({Key? key}) : super(key: key);

  @override
  _RenanMusicaState createState() => _RenanMusicaState();
}

//Instanciando a classe
AudioPlayer musica = AudioPlayer();

//declarando um método para executar a midia
_rodarMusica() async {
  String url = "musicas/renantema.mp3";

  int resultado = await musica.play(url);

  if (resultado == 1) {
    print("ok");
  } else {
    print("Não rodou a música");
  }
}

class _RenanMusicaState extends State<RenanMusica> {
  @override
  Widget build(BuildContext context) {
    _rodarMusica();
    return Container();
  }
}