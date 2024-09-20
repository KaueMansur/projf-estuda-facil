import 'package:flutter/material.dart';

class CampoInfos extends StatelessWidget {
  const CampoInfos({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 350,
      child: TextField(
        style: TextStyle(
          color: Colors.white,

        ),
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: Colors.white,
                width: 2,
              ),
            ),
            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            labelText: 'Email:',
            labelStyle: TextStyle(
              fontSize: 25,
              color: Colors.white,
            )),
      ),
    );
  }
}
