import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //fonction de construction d'une touche du Xylophone
  Widget buildKey({required Color color, required int note}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        //Utilisation de AudioPlayer AudioCache pour lire un fichier audio
        onPressed: () => AudioCache().play("note$note.wav"),
        child: Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //Couleur du theme general
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Xylophone"),
        ),
        body: SafeArea(
          child: Expanded(
            child: Column(
              //on etire les touches sur la largeur de l'écran
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //appels de la fonction buildKey, on y envoie un widget Color et un int correspondant a la note voulu
                buildKey(color: Colors.red, note: 1),
                buildKey(color: Colors.orange, note: 2),
                buildKey(color: Colors.yellow, note: 3),
                buildKey(color: Colors.green, note: 4),
                buildKey(color: Colors.lightGreenAccent, note: 5),
                buildKey(color: Colors.blue, note: 6),
                buildKey(color: Colors.deepPurple, note: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
