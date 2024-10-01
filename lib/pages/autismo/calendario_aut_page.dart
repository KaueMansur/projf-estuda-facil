import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/componentes/btn_update.dart';
import 'package:projf_estuda_facil/componentes/calendario.dart';
import 'package:projf_estuda_facil/componentes/barra_progresso.dart';
import 'package:projf_estuda_facil/componentes/titulo_preto.dart';

class CalendarioAutPage extends StatelessWidget {
  const CalendarioAutPage({super.key});

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
          children: [
            const SizedBox(height: 20,),
            const BarraProgresso(),
            const SizedBox(height: 50,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: 300,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFA6E3A1),
              ),
              child: Center(
                child: SizedBox(
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('../../images/icone_calendario_aut.png'),
                          const TituloPreto(title: 'CALENDÁRIO'),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Calendario(),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BtnUpdate(label: 'TAREFA'),
                BtnUpdate(label: 'SALVAR'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
