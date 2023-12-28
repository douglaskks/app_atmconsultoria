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
        body: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset("images/detalhe_empresa.png"),
                  Text("Sobre a Empresa")
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 32)),
              Text(
                "Consultoria de TI: Otimizamos sua infraestrutura e estratégia tecnológica para maximizar a eficiência operacional.",
                textAlign: TextAlign.justify,
              ),
              Text(
                "Desenvolvimento de Software: Criamos soluções personalizadas, desde aplicativos móveis a sistemas empresariais.",
                textAlign: TextAlign.justify,
              ),
              Text(
                "Segurança Cibernética: Protegemos seu negócio contra ameaças, garantindo a segurança de seus dados.",
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ));
  }
}
