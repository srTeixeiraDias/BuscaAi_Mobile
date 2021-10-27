import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'menunavegacao.dart';

class Atualizacoes extends StatelessWidget {
  const Atualizacoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuNavegacao(),
      appBar: AppBar(
        title: Text("Atualizações"),
      ),
    );
  }
}
