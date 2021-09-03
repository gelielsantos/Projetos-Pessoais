import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:marvelwiki/lista.dart';
import 'package:marvelwiki/inicio.dart';
import 'package:marvelwiki/musica/thanosmusica.dart';
import 'package:marvelwiki/galeria/thanosfoto.dart';
import 'package:marvelwiki/ironman.dart';
import 'package:marvelwiki/spiderman.dart';
import 'package:marvelwiki/ultron.dart';
import 'package:marvelwiki/deadpool.dart';
import 'package:marvelwiki/justiceiro.dart';
import 'package:marvelwiki/geliel.dart';
import 'package:marvelwiki/mateus.dart';
import 'package:marvelwiki/renan.dart';

class Thanos extends StatelessWidget {
  const Thanos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("THANOS", style: TextStyle(
          color: Color(0xFFED1D24),
        ),),
      ),
      backgroundColor: Color(0xFFED1D24),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(left: 100, right: 100, top: 20),
          child:Image.asset(
            "imagens/thanos.jpg",
            fit: BoxFit.cover,
          ),
    ),
          Center(
            child: Padding(padding: EdgeInsets.only(top: 40),
              child: Text(
                "Thanos",
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
                "Thanos foi um dos últimos filhos de A'Lars, progenitor da segunda colônia de Eternos em Titã, e Sui-San, o último sobrevivente do assentamento original dos Eternos em Titã. ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text("Nascida com uma pele cinzenta e parecida com couro e um corpo enorme devido ao fato de ter nascido com a síndrome deviante, Thanos era uma criança rabugenta que ficou obcecada com o conceito de morte. Através da implementação biônica e longas horas de meditação, Thanos aumentou suas forças e poderes Eternos, de modo que suas habilidades superaram as de todos os outros Eternos de Titã.",
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
                                    context, MaterialPageRoute(builder: (context) => Thanosfoto()));
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
                                context, MaterialPageRoute(builder: (context) => ThanosMusica()));
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
