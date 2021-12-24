import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Messaging(),
));

class Messaging extends StatelessWidget {
  const Messaging({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Profile Page"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.video_call), onPressed: () {}),
            IconButton(icon: Icon(Icons.call), onPressed: () {}),
          ],
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 0.0,
        ),
        body: Center(),
        );
  }
}
