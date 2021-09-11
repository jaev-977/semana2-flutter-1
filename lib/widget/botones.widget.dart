import 'package:flutter/material.dart';

Widget pintarBoton(
    {required dynamic metodo,
    int valorFlex = 1,
    required Widget componente,
    dynamic colorbuton = Colors.blue}) {
  return Expanded(
      flex: valorFlex,
      child: Container(
          child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: colorbuton,
            ),
            onPressed: metodo,
            child: componente),
      )));
}
