import 'package:atm_consultoria/telaClientes.dart';
import 'package:atm_consultoria/telaContato.dart';
import 'package:atm_consultoria/telaSecundaria.dart';
import 'package:atm_consultoria/telaServicos.dart';
import 'package:flutter/material.dart';

class telaPrincipal extends StatefulWidget {
  const telaPrincipal({super.key});

  @override
  State<telaPrincipal> createState() => _telaPrincipalState();
}

class _telaPrincipalState extends State<telaPrincipal> {
  void _abrirempresa() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => telaSecundaria(valor: "Douglas"),
        ));
  }

  void _abrirServicos() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => telaServicos()));
  }

  void _abrirClientes() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => telaClientes()));
  }

  void _abrirContato() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => telaContato()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ATM Consultoria",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Padding(padding: EdgeInsets.only(top: 32)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //Botão "A Empresa"
                GestureDetector(
                  onTap: () => _abrirempresa(),
                  child: Image.asset("images/menu_empresa.png"),
                ),
                //Botão Serviços
                GestureDetector(
                  onTap: () => _abrirServicos(),
                  child: Image.asset("images/menu_servico.png"),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 32)),
            //parte de baixo do menu
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //Botão "Clientes"
                GestureDetector(
                  onTap: () => _abrirClientes(),
                  child: Image.asset("images/menu_cliente.png"),
                ),
                //Botão Serviços
                GestureDetector(
                  onTap: () => _abrirContato(),
                  child: Image.asset("images/menu_contato.png"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
