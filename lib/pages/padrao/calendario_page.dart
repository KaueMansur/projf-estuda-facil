import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/componentes/anotacoes.dart';
import 'package:projf_estuda_facil/componentes/btn_update_padrao.dart';
import 'package:projf_estuda_facil/componentes/calendario_padrao.dart';

class CalendarioPage extends StatelessWidget {
  const CalendarioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xEB2521C3),
      appBar: AppBar(
        title: const Text(
          'Calendário',
          style: TextStyle(
            color: Color(0xEB2521C3),
          ),
        ),
      ),
      drawer: const Drawer(),
      body: const Center(
        child: SizedBox(
          width: 400,
          height: 670,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CalendarioPadrao(),
              Anotacoes(),
              SizedBox(
                width: 375,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BtnUpdatePadrao(label: 'TAREFA'),
                    BtnUpdatePadrao(label: 'SALVAR'),
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
