import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:marvelwiki/lista.dart';
import 'package:marvelwiki/inicio.dart';
import 'package:marvelwiki/musica/gelielmusica.dart';
import 'package:marvelwiki/galeria/gelielfoto.dart';
import 'package:marvelwiki/ironman.dart';
import 'package:marvelwiki/spiderman.dart';
import 'package:marvelwiki/thanos.dart';
import 'package:marvelwiki/ultron.dart';
import 'package:marvelwiki/deadpool.dart';
import 'package:marvelwiki/justiceiro.dart';
import 'package:marvelwiki/mateus.dart';
import 'package:marvelwiki/renan.dart';

class Geliel extends StatelessWidget {
  const Geliel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GELIEL", style: TextStyle(
          color: Color(0xFFED1D24),
        ),),
      ),
      backgroundColor: Color(0xFFED1D24),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(left: 100, right: 100, top: 20),
          child:Image.asset(
            "imagens/pgeliel.jpg",
            fit: BoxFit.cover,
          ),
    ),
          Center(
            child: Padding(padding: EdgeInsets.only(top: 40),
              child: Text(
              "Geliel Santos (Gelisgamer)",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
    ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text(
                "Gênio, inventor, nerd e gamer, Geliel é um dos criadores do aplicativo. Fã da Marvel e dono de canais de curiosidades e notícias Geeks, ele se tornou o principal idealizador pelo conhecimento. Mas claro, sempre humilde não é mesmo???",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 20)),
          Card(
            child: Container(
              height: 100,
              color: Colors.white,
              child: Row(
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Expanded(
                        child: Icon(Icons.enhance_photo_translate, color: Color(0xFFED1D24), size: 60,),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: ListTile(
                              title:Text("Galeria", style: TextStyle(
                                fontSize: 30,
                              ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Gelielfoto()));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    flex: 8,
                  ),
                ],
              ),
            ),
            elevation: 8,
            margin: EdgeInsets.all(10),
          ),
          Card(
            child: Container(
              height: 100,
              color: Colors.white,
              child: Row(
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Expanded(
                        child: Icon(Icons.music_note, color: Color(0xFFED1D24), size: 60,),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: ListTile(
                              title:Text("Musica Tema", style: TextStyle(
                                fontSize: 30,
                              ),
                              ),
                              onTap: () {
                                Navigator.push(
                                context, MaterialPageRoute(builder: (context) => GelielMusica()));
                                },
                            ),
                          ),
                        ],
                      ),
                    ),
                    flex: 8,
                  ),
                ],
              ),
            ),
            elevation: 8,
            margin: EdgeInsets.all(10),
          ),
        ],
      ),
      endDrawer:
      Drawer(
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 30, bottom: 30),
              child:
              Center(
                child: Text("Sempre há como se Vingar:",
                  style: TextStyle(
                    color: Color(0xFFED1D24),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.contact_mail,
                color: Color(0xFFED1D24),
              ),
              title: Text(
                'Heróis',
                style: TextStyle(
                  color: Color(0xFFED1D24),
                ),
              ),
              onTap: () {
                showDialog(
                  barrierDismissible: false,
                  context: (context),
                  builder: (context) =>AlertDialog(
                    content: Text("Escolha o seu Heroí"),
                    actions: <Widget>[
                      //ignore: deprecated_member_use
                      Center( child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Iron()));
                          },
                          child: Text("IronMan")),),
                      //ignore: deprecated_member_use
                      Center( child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Spider()));
                          },
                          child: Text("Spiderman")),),
                      Padding(padding: EdgeInsets.only(top:20)),
                      Center(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop("Cancelar");
                            },
                            child: Text("Cancelar", style: TextStyle(color: Color(0xFFED1D24)),)
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.dangerous,
                color: Color(0xFFED1D24),
              ),
              title: Text(
                'Vilões',
                style: TextStyle(
                  color: Color(0xFFED1D24),
                ),
              ),
              onTap: () {
                showDialog(
                  barrierDismissible: false,
                  context: (context),
                  builder: (context) =>AlertDialog(
                    content: Text("Escolha o seu Vilão"),
                    actions: <Widget>[
                      //ignore: deprecated_member_use
                      Center( child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Thanos()));
                          },
                          child: Text("Thanos")),),
                      //ignore: deprecated_member_use
                      Center( child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Ultron()));
                          },
                          child: Text("Ultron")),),
                      Padding(padding: EdgeInsets.only(top:20)),
                      Center(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop("Cancelar");
                            },
                            child: Text("Cancelar", style: TextStyle(color: Color(0xFFED1D24)),)
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.alt_route,
                color: Color(0xFFED1D24),
              ),
              title: Text(
                'Anti-Heróis',
                style: TextStyle(
                  color: Color(0xFFED1D24),
                ),
              ),
              onTap: () {
                showDialog(
                  barrierDismissible: false,
                  context: (context),
                  builder: (context) =>AlertDialog(
                    content: Text("Escolha o seu Anti-herói"),
                    actions: <Widget>[
                      //ignore: deprecated_member_use
                      Center( child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Deadpool()));
                          },
                          child: Text("Deadpool")),),
                      //ignore: deprecated_member_use
                      Center( child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Justiceiro()));
                          },
                          child: Text("Justiceiro")),),
                      Padding(padding: EdgeInsets.only(top:20)),
                      Center(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop("Cancelar");
                            },
                            child: Text("Cancelar", style: TextStyle(color: Color(0xFFED1D24)),)
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.chair,
                color: Color(0xFFED1D24),
              ),
              title: Text(
                'Criadores',
                style: TextStyle(
                  color: Color(0xFFED1D24),
                ),
              ),
              onTap: () {
                showDialog(
                  barrierDismissible: false,
                  context: (context),
                  builder: (context) =>AlertDialog(
                    content: Text("Escolha o seu Criador"),
                    actions: <Widget>[
                      //ignore: deprecated_member_use
                      Center( child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Geliel()));
                          },
                          child: Text("Geliel")),),
                      //ignore: deprecated_member_use
                      Center( child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Mateus()));
                          },
                          child: Text("Mateus")),),
                      Center( child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Renan()));
                          },
                          child: Text("Renan")),),
                      Padding(padding: EdgeInsets.only(top:20)),
                      Center(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop("Cancelar");
                            },
                            child: Text("Cancelar", style: TextStyle(color: Color(0xFFED1D24)),)
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Padding(padding: EdgeInsets.only(bottom: 30),),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Lista()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFED1D24),
                  elevation: 20,
                  shadowColor: Colors.black,),
                icon: Icon(Icons.arrow_back, color: Colors.white,),
                label: Text('Voltar',  style: TextStyle(color: Colors.white,),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
