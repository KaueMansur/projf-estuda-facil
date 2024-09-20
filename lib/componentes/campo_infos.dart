import 'package:flutter/material.dart';

class CampoInfos extends StatelessWidget {
  final String nomeCampo;
  const CampoInfos({super.key, required this.nomeCampo});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: TextField(
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: Colors.white,
                width: 2,
              ),
            ),
            contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            labelText: nomeCampo,
            labelStyle: const TextStyle(
              fontSize: 25,
              color: Colors.white,
            )),
      ),
    );
  }
}
