import 'package:flutter/material.dart';

class telaServicos extends StatefulWidget {
  const telaServicos({super.key});

  @override
  State<telaServicos> createState() => _telaServicosState();
}

class _telaServicosState extends State<telaServicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Servicos",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[Text("Servoços")],
        ),
      ),
    );
  }
}
