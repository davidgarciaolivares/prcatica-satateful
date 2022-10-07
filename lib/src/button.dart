import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

// Guión bajo es clase privada _
class _MyButtonState extends State<MyButton> {
  String flutterText = 'marvel.png';
  int index = 0;
   List<String> collections = ['capitan.png', 'hulk.png', 'iron.png', 'spider.png', 'thor.png', 'wolverine.png'];


  void onPressedButton() {
    setState(() {
      flutterText = collections[index];
      index = index < 5 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget David Garcia Olivares-190650"),
        backgroundColor: Color.fromARGB(255, 54, 129, 111),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                  'assets/images/' + flutterText,
                    width: 180,
                    height: 250,),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: ElevatedButton(
                  child: Text("Actualizar"),
                  onPressed: onPressedButton,
                  style:
                      ElevatedButton.styleFrom(primary: Color.fromARGB(255, 46, 165, 35)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
