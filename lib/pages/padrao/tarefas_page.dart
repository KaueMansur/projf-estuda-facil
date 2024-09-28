import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/componentes/anotacoes.dart';
import 'package:projf_estuda_facil/componentes/btn_update_padrao.dart';
import 'package:projf_estuda_facil/main.dart';

class TarefasPage extends StatelessWidget {
  const TarefasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xEB2521C3),
      appBar: AppBar(
        title: const Text(
          'Tarefas',
          style: TextStyle(
            color: Color(0xEB2521C3),
          ),
        ),
      ),
      drawer: const Drawer(),
      body: Center(
        child: SizedBox(
          width: 375,
          height: 670,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: main,
                    icon: Image.asset('../../../images/relogio.png'),
                  ),
                  IconButton(
                    onPressed: main,
                    icon: Image.asset('../../../images/ampulheta.png'),
                  ),
                ],
              ),
              Image.asset('../../../images/tecnica-de-pomodoro.png'),
              const Anotacoes(),
              const SizedBox(
                  width: 375,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BtnUpdatePadrao(label: 'SALVAR'),
                      BtnUpdatePadrao(label: 'EXCLUIR'),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
