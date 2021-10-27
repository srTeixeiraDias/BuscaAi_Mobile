import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:projeto02/FaleConosco.dart';
import 'package:projeto02/SobreNos.dart';
import 'package:projeto02/atualizacoes.dart';
import 'package:projeto02/categorias.dart';
import 'package:projeto02/main.dart';

class MenuNavegacao extends StatelessWidget {
  final preenchimento = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
            color: Colors.blueGrey[900],
            child: ListView(
              padding: preenchimento,
              children: [
                Container(
                    color: Colors.blueGrey[900],
                    child: Column(
                      children: [
                        cabecalho(
                            nome: "BuscaAí",
                            imagem: 'https://i.ibb.co/GRD6Z1C/logo-b.png',
                            clique: () => itemselecao(context, 3)),
                        menuitem(
                            texto: "Minha loja",
                            icone: Icons.local_convenience_store_rounded,
                            clique: () => itemselecao(context, 4)),
                        const SizedBox(
                          height: 16,
                        ),
                        menuitem(
                            texto: "Sobre Nós",
                            icone: Icons.groups,
                            clique: () => itemselecao(context, 0)),
                        const SizedBox(
                          height: 16,
                        ),
                        menuitem(
                            texto: "Fale conosco",
                            icone: Icons.local_phone,
                            clique: () => itemselecao(context, 1)),
                        Divider(
                          color: Colors.white70,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        menuitem(
                            texto: "Atualizações",
                            icone: Icons.update,
                            clique: () => itemselecao(context, 2))
                      ],
                    )),
              ],
            )));
  }

  /* Widget menuitem(
      {required String texto, required IconData icone, VoidCallback? clique}) {
    final corselecao = Colors.white70;
    final cor = Colors.white;
    return ListTile(
      leading: Icon(icone, color: Colors.white),
      title: Text(texto, style: TextStyle(color: cor)),
      hoverColor: corselecao,
      onTap: clique,
    );
  }  */

  Widget menuitem({
    required String texto,
    required IconData icone,
    VoidCallback? clique,
  }) {
    final cor = Colors.white;

    final corselecao = Colors.white70;

    return ListTile(
      leading: Icon(icone, color: cor),
      title: Text(texto, style: TextStyle(color: cor)),
      hoverColor: corselecao,
      onTap: clique,
    );
  }

  cabecalho(
          {required String nome,
          required String imagem,
          required VoidCallback clique}) =>
      InkWell(
        onTap: clique,
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(imagem),
            ),
            SizedBox(width: 20),
            Column(
              children: [
                Text(nome,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                const SizedBox(width: 4),
              ],
            )
          ],
        ),
      );
  void itemselecao(BuildContext context, int i) {
    Navigator.of(context).pop();
    switch (i) {
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => FaleConosco()));
        break;

      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SobreNos()));

        break;

      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Atualizacoes()));
        break;

      case 3:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Meuaplicativo()));
        break;

      case 4:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Minhaloja()));
        break;
    }
  }
}
