import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:marvelwiki/lista.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreenView(
      navigateRoute: Inicio(),
      duration: 4500,
      imageSize: 130,
      imageSrc: "entradalogo.png",
      text: "MARVEL WIKI",
      textType: TextType.ScaleAnimatedText,
      textStyle: TextStyle(
        fontSize: 40.0,
        color: Colors.white,
      ),
      backgroundColor: Color(0xFFED1D24),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFED1D24),
      body: ListView(
        children: [
          Image.asset(
            "imagens/entradalogo.png",
            fit: BoxFit.cover,
          ),

          Padding(padding: EdgeInsets.only(right: 30, left: 30, bottom: 10),
            child: Image.asset(
              "imagens/entradavigianew.png",
            ),
          ),
          Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Lista()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 20,
                  shadowColor: Colors.black,
                ),
                icon: Icon(Icons.search, color: Color(0xFFED1D24),),
                label: Text('Faça sua escolha', style: TextStyle(color: Color(0xFFED1D24),),),
              ))
        ],
      ),
    );
  }
}
