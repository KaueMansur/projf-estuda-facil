import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/pages/padrao/calendario_page.dart';
import 'package:projf_estuda_facil/pages/padrao/tarefas_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TarefasPage(),
    );
  }
}