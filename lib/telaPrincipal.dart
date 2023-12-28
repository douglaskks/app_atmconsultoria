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
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Image.asset("images/logo.png"),
            Padding(padding: EdgeInsets.only(top: 32)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Botão "A Empresa"
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const telaSecundaria())),
                  child: Image.asset("images/menu_empresa.png"),
                ),
                //Botão Serviços
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const telaServicos())),
                  child: Image.asset("images/menu_servico.png"),
                )
              ],
            ),
            //parte de baixo do menu
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Botão "Clientes"
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const telaClientes())),
                  child: Image.asset("images/menu_cliente.png"),
                ),
                //Botão Serviços
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const telaContato())),
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
