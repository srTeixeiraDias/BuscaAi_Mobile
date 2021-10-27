import 'package:flutter/material.dart';
import 'package:projeto02/menunavegacao.dart';

void main() {
  runApp(Meuaplicativo());
}

class Meuaplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BuscaAí: Pagina Inicial',
      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
      ),
      home: MinhaNovaPagina(),
    );
  }
}

class MinhaNovaPagina extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MinhaNovaPaginaEstado();
  }
}

class MinhaNovaPaginaEstado extends State<MinhaNovaPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuNavegacao(),
      appBar: AppBar(
        title: Text("BuscaAí"),
      ),
    );
  }
}
