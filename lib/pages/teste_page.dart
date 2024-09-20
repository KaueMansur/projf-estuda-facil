import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/componentes/btn_amarelo.dart';
import 'package:projf_estuda_facil/componentes/btn_update.dart';
import 'package:projf_estuda_facil/componentes/campo_infos.dart';
import 'package:projf_estuda_facil/componentes/titulo_branco.dart';

class TestePage extends StatelessWidget {
  const TestePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 68, 7, 126),
      body: Center(
        child: Column(
          children: [
            Text('Teste'),
            TextField(),
            BtnAmarelo(),
            TituloBranco(),
            CampoInfos(),
            BtnUpdate(),
          ],
        ),
      ),
    );
  }
}
