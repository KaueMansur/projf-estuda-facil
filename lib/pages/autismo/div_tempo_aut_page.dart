import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/componentes/anotacoes.dart';
import 'package:projf_estuda_facil/componentes/barra_progresso.dart';
import 'package:projf_estuda_facil/componentes/btn_update.dart';
import 'package:projf_estuda_facil/componentes/btn_update_padrao.dart';
import 'package:projf_estuda_facil/componentes/calendario_tempo.dart';
import 'package:projf_estuda_facil/main.dart';

class DivTempoAutPage extends StatelessWidget {
  const DivTempoAutPage({super.key});

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
            icon: Image.asset(
              '../../images/lupa.png',
            ),
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
      drawer: const Drawer(),
      body: Center(
        child: SizedBox(
          width: 375,
          height: 670,
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('../../../images/icone_tempo.png'),
                          const Text(
                            'Seleção do tempo',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                      const CalendarioTempo(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 375,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BtnUpdate(label: 'SALVAR'),
                    BtnUpdate(label: 'EXCLUIR'),
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
