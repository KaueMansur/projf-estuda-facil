import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/componentes/outros/anotacoes.dart';
import 'package:projf_estuda_facil/componentes/outros/barra_progresso.dart';
import 'package:projf_estuda_facil/componentes/botoes/btn_update.dart';
import 'package:projf_estuda_facil/componentes/pop_ups/popup_data.dart';
import 'package:projf_estuda_facil/componentes/pop_ups/popup_salvar_tarefa.dart';
import 'package:projf_estuda_facil/componentes/pop_ups/popup_tempo_estudo.dart';
import 'package:projf_estuda_facil/main.dart';

class TarefasAutPage extends StatefulWidget {
  // Anotacoes anotacoes = Anotacoes();
  const TarefasAutPage({super.key});

  @override
  State<TarefasAutPage> createState() => _TarefasAutPageState();
}

class _TarefasAutPageState extends State<TarefasAutPage> {
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: (){
                              marcarData();
                            },
                            icon: Image.asset(
                              '../../../images/relogio.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                          IconButton(
                            onPressed: (){
                              marcarTemporizador();
                            },
                            icon: Image.asset(
                              '../../../images/ampulheta.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                          '../../../images/tecnica_pomodoro_autismo.png'),
                      Anotacoes(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 375,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BtnUpdate(
                      label: 'SALVAR',
                      onPressed: () {
                        salvar();
                      },
                    ),
                    BtnUpdate(
                      label: 'EXCLUIR',
                      onPressed: () {
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  marcarTemporizador() {
    return showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          contentPadding: EdgeInsets.all(0),
          content: PopupTempoEstudo(),
        );
      },
    );
  }

  marcarData() {
    return showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          contentPadding: EdgeInsets.all(0),
          content: PopupData(),
        );
      },
    );
  }

  salvar() {
    return showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          contentPadding: EdgeInsets.all(0),
          content: PopupSalvarTarefa(),
        );
      },
    );
  }
}
