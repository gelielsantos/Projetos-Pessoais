import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class UltronMusica extends StatefulWidget {
  const UltronMusica({Key? key}) : super(key: key);

  @override
  _UltronMusicaState createState() => _UltronMusicaState();
}

//Instanciando a classe
AudioPlayer musica = AudioPlayer();

//declarando um método para executar a midia
_rodarMusica() async {
  String url = "musicas/ultrontema.mp3";

  int resultado = await musica.play(url);

  if (resultado == 1) {
    print("ok");
  } else {
    print("Não rodou a música");
  }
}

class _UltronMusicaState extends State<UltronMusica> {
  @override
  Widget build(BuildContext context) {
    _rodarMusica();
    return Container();
  }
}