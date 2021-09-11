import 'package:flutter/material.dart';

Widget pintarBoton(
    {required String texto, required dynamic metodo, int valorFlex = 1}) {
  return Expanded(
      flex: valorFlex,
      child: Container(
          child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ElevatedButton(onPressed: metodo, child: Text(texto)),
      )));
}
