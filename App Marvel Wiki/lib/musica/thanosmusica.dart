import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class ThanosMusica extends StatefulWidget {
  const ThanosMusica({Key? key}) : super(key: key);

  @override
  _ThanosMusicaState createState() => _ThanosMusicaState();
}

//Instanciando a classe
AudioPlayer musica = AudioPlayer();

//declarando um método para executar a midia
_rodarMusica() async {
  String url = "musicas/thanostema.mp3";

  int resultado = await musica.play(url);

  if (resultado == 1) {
    print("ok");
  } else {
    print("Não rodou a música");
  }
}

class _ThanosMusicaState extends State<ThanosMusica> {
  @override
  Widget build(BuildContext context) {
    _rodarMusica();
    return Container();
  }
}