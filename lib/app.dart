import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/pages/autismo/tarefas_aut_page.dart';
import 'package:projf_estuda_facil/pages/login_page.dart';
import 'package:projf_estuda_facil/teste_back_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TesteBackPage( ),
      debugShowCheckedModeBanner: false,
    );
  }
}