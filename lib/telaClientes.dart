import 'package:flutter/material.dart';

class telaClientes extends StatefulWidget {
  const telaClientes({super.key});

  @override
  State<telaClientes> createState() => _telaClientesState();
}

class _telaClientesState extends State<telaClientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Clientes",
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
