import 'package:flutter/material.dart';
import 'package:marvelwiki/inicio.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'MARVEL WIKI',
    theme: ThemeData(
      primaryColor: Colors.white,
    ),
    home: Splash(),
  ),);
}


