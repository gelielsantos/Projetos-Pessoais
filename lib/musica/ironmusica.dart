import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class IronMusica extends StatefulWidget {
  const IronMusica({Key? key}) : super(key: key);

  @override
  _IronMusicaState createState() => _IronMusicaState();
}

//Instanciando a classe
AudioPlayer musica = AudioPlayer();

//declarando um método para executar a midia
_rodarMusica() async {
  String url = "musicas/irontema.mp3";

  int resultado = await musica.play(url);

  if (resultado == 1) {
    print("ok");
  } else {
    print("Não rodou a música");
  }
}

class _IronMusicaState extends State<IronMusica> {
  @override
  Widget build(BuildContext context) {
    _rodarMusica();
    return Container();
  }
}