import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Xylophone(),
        ),
      ),
    );
  }
}

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playsound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Color colorname(int num) {
    Color x;
    switch (num) {
      case 1:
        x = Colors.red;
        break;
      case 2:
        x = Colors.orange;
        break;
      case 3:
        x = Colors.yellow;
        break;
      case 4:
        x = Colors.green;
        break;
      case 5:
        x = Colors.blue;
        break;
      case 6:
        x = Colors.indigo;
        break;
      case 7:
        x = Colors.purple;
        break;
      default:
        x = Colors.white;
        break;
    }
    return x;
  }

  Expanded playbutton(int num) {
    return Expanded(
      child: FlatButton(
        color: colorname(num),
        onPressed: () {
          playsound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        playbutton(1),
        playbutton(2),
        playbutton(3),
        playbutton(4),
        playbutton(5),
        playbutton(6),
        playbutton(7),
      ],
    );
  }
}
