import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/componentes/outros/barra_progresso.dart';
import 'package:projf_estuda_facil/pages/autismo/calendario_aut_page.dart';
import 'package:projf_estuda_facil/pages/autismo/div_tempo_aut_page.dart';
import 'package:projf_estuda_facil/pages/autismo/tarefas_aut_page.dart';
import 'package:projf_estuda_facil/pages/padrao/hub_page.dart';

class HubAutPage extends StatelessWidget {
  const HubAutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFD9E8),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('../../images/seta_voltar.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset('../../images/lupa.png'),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset('../../images/btn_voltar.png'),
          ),
        ],
        title: Row(
          children: [
            Image.asset('../../images/logo_appbar.png'),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'ES',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'fonte',
                      color: Colors.red,
                    ),
                  ),
                  TextSpan(
                    text: 'TU',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'fonte',
                      color: Colors.yellow,
                    ),
                  ),
                  TextSpan(
                    text: 'DA',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'fonte',
                      color: Colors.green,
                    ),
                  ),
                  TextSpan(
                    text: 'FÁ',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'fonte',
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(
                    text: 'CIL',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'fonte',
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(61, 255, 255, 255),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const BarraProgresso(),
            SizedBox(
              width: 350,
              height: 400,
              child: Container(
                color: const Color(0xFFA6E3A1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 300,
                      height: 70,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xFFA0D8F1),
                        ),
                        child: const Text('PRÓXIMA TAREFA:'),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      height: 70,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xFFA0D8F1),
                        ),
                        child: const Text('TAREFAS DO DIA:'),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CalendarioAutPage()),
                                );
                              },
                              icon: Image.asset(
                                  '../../images/icone_calendario.png'),
                            ),
                            const Text('Calendário'),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DivTempoAutPage()),
                                );
                              },
                              icon: Image.asset('../../images/icone_tempo.png'),
                            ),
                            const Text('Tempo'),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                        TarefasAutPage()),
                                );
                              },
                              icon:
                                  Image.asset('../../images/icone_tarefas.png'),
                            ),
                            const Text('Tarefas'),
                          ],
                        ),
                         Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HubPage()),
                                );
                              },
                              icon: Image.asset('../../images/task_icon.png'),
                            ),
                            const Text('Padrão'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
