import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/componentes/btn_update_padrao.dart';
import 'package:projf_estuda_facil/pages/autismo/tarefas_aut_page.dart';
import 'package:projf_estuda_facil/pages/padrao/calendario_page.dart';
import 'package:projf_estuda_facil/pages/padrao/tarefas_page.dart';

class HubPage extends StatelessWidget {
  const HubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Ícone de voltar
          onPressed: () {
            // Ação para o botão de voltar
          },
        ),
        title: const Text('Estuda Fácil'),
        actions: [
          IconButton(
            icon: const Icon(Icons.crop_square),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.blue[800], // Fundo azul
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Search',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Tarefas de estudo:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                color: Colors.grey[300], // Fundo do campo de texto
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText:
                          'Escreva suas tarefas de estudo aqui...', // Placeholder
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const Text(
                'Tarefas diárias:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                color: Colors.grey[300], // Fundo do campo de texto
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText:
                          'Escreva suas tarefas diárias aqui...', // Placeholder
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const Spacer(),
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
                                          const CalendarioPage()),
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
                                          const TarefasPage()),
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
                              icon: Image.asset('../../images/logo_appbar.png'),
                            ),
                            const Text('Autista'),
                          ],
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
