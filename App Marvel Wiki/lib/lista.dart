import 'package:flutter/material.dart';
import 'package:marvelwiki/inicio.dart';
import 'package:marvelwiki/ironman.dart';
import 'package:marvelwiki/spiderman.dart';
import 'package:marvelwiki/thanos.dart';
import 'package:marvelwiki/ultron.dart';
import 'package:marvelwiki/deadpool.dart';
import 'package:marvelwiki/justiceiro.dart';
import 'package:marvelwiki/geliel.dart';
import 'package:marvelwiki/mateus.dart';
import 'package:marvelwiki/renan.dart';

class Lista extends StatelessWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(padding: EdgeInsets.all(160),
          child: Image.asset(
            "imagens/entradalogo.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
      ),
      backgroundColor: Color(0xFFED1D24),
      body:
      ListView(
        children: [
          Padding(padding: EdgeInsets.all(0),
            child: Center(
              child:Text("A Lista da S.H.I.E.L.D.:",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            ),
          ),
          Padding(padding: EdgeInsets.all(0),
            child: Image.asset(
              "imagens/menupersonagem.png",
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.contact_mail,
              color: Colors.white,
            ),
            title: Text(
              'Heróis',
              style: TextStyle(
                color: Colors.white,
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
              color: Colors.white,
            ),
            title: Text(
              'Vilões',
              style: TextStyle(
                color: Colors.white,
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
              color: Colors.white,
            ),
            title: Text(
              'Anti-Heróis',
              style: TextStyle(
                color: Colors.white,
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
              color: Colors.white,
            ),
            title: Text(
              'Criadores',
              style: TextStyle(
                color: Colors.white,
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
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Inicio()));
              },
              style: ElevatedButton.styleFrom(
              primary: Colors.white,
              elevation: 20,
              shadowColor: Colors.black,),
              icon: Icon(Icons.arrow_back, color: Color(0xFFED1D24),),
              label: Text('Voltar',  style: TextStyle(color: Color(0xFFED1D24),),),
            ),
          ),
        ],
      ),
    );
  }
}

