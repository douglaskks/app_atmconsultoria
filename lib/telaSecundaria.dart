import 'package:flutter/material.dart';

class telaSecundaria extends StatefulWidget {
  const telaSecundaria({super.key});

  @override
  State<telaSecundaria> createState() => _telaSecundariaState();
}

class _telaSecundariaState extends State<telaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tela Secundaria",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[Text("Aqui é a segunda tela!")],
        ),
      ),
    );
  }
}
