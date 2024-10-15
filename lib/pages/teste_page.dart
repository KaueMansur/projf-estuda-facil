// import 'package:flutter/material.dart';
// import 'package:projf_estuda_facil/componentes/barra_progresso.dart';
// import 'package:projf_estuda_facil/componentes/btn_amarelo.dart';
// import 'package:projf_estuda_facil/componentes/btn_update.dart';
// import 'package:projf_estuda_facil/componentes/campo_infos.dart';
// import 'package:projf_estuda_facil/componentes/titulo_branco.dart';
// import 'package:projf_estuda_facil/componentes/titulo_preto.dart';

// class TestePage extends StatelessWidget {
//   const TestePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       //início appBar
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Image.asset('../../images/seta_voltar.png'),

//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: Image.asset('../../images/lupa.png'),
//           ),
//           IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: Image.asset('../../images/btn_voltar.png'),
//           ),
//         ],
//         title: Row(
//           children: [
//             Image.asset('../../images/logo_appbar.png'),
//             RichText(
//               textAlign: TextAlign.center,
//               text: const TextSpan(
//                 children: [
//                   TextSpan(
//                     text: 'ES',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontFamily: 'fonte',
//                       color: Colors.red,
//                     ),
//                   ),
//                   TextSpan(
//                     text: 'TU',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontFamily: 'fonte',
//                       color: Colors.yellow,
//                     ),
//                   ),
//                   TextSpan(
//                     text: 'DA',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontFamily: 'fonte',
//                       color: Colors.green,
//                     ),
//                   ),
//                   TextSpan(
//                     text: 'FÁ',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontFamily: 'fonte',
//                       color: Colors.blue,
//                     ),
//                   ),
//                   TextSpan(
//                     text: 'CIL',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontFamily: 'fonte',
//                       color: Colors.red,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         backgroundColor: const Color.fromARGB(61, 255, 255, 255),
//       ),
//       //fim da appBar


//       backgroundColor: Color.fromARGB(255, 68, 7, 126),
//       body: const Center(
//         child: Column(
//           children: [
//             Text('Teste'),
//             TextField(),
//             BtnAmarelo(
//               label: 'Teste',
//             ),
//             TituloBranco(
//               title: 'Teste',
//             ),
//             TituloPreto(
//               title: 'teste',
//             ),
//             CampoInfos(
//               nomeCampo: 'Teste',
//             ),
//             BtnUpdate(
//               label: 'Teste',
//             ),
//             BarraProgresso(),
//           ],
//         ),
//       ),
//     );
//   }
// }
