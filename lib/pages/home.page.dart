import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:semanda2flutter1/widget/botones.widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              child: Row(children: [
                Text("Zona resultados"),
              ]),
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(children: [
                Text("Zona de ingreso"),
              ]),
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: _listaBotones()),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: _listaBotones2()),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: _listaBotones3()),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: _listaBontones4()),
                ],
              ),
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  _listaBotones() {
    return [
      pintarBoton(metodo: () {}, componente: Text("7")),
      pintarBoton(metodo: () {}, componente: Text("8")),
      pintarBoton(metodo: () {}, componente: Text("9")),
      pintarBoton(metodo: () {}, componente: Text("/")),
      pintarBoton(metodo: () {}, componente: Icon(Icons.replay)),
      pintarBoton(metodo: () {}, componente: Text("C")),
    ];
  }

  _listaBotones2() {
    return [
      pintarBoton(metodo: () {}, componente: Text("4")),
      pintarBoton(metodo: () {}, componente: Text("5")),
      pintarBoton(metodo: () {}, componente: Text("6")),
      pintarBoton(metodo: () {}, componente: Text("x")),
      pintarBoton(metodo: () {}, componente: Text("(")),
      pintarBoton(metodo: () {}, componente: Text(")")),
    ];
  }

  _listaBotones3() {
    return [
      pintarBoton(metodo: () {}, componente: Text("1")),
      pintarBoton(metodo: () {}, componente: Text("2")),
      pintarBoton(metodo: () {}, componente: Text("3")),
      pintarBoton(metodo: () {}, componente: Text("-")),
      pintarBoton(metodo: () {}, componente: Text("x²")),
      pintarBoton(metodo: () {}, componente: Text("√")),
    ];
  }

  _listaBontones4() {
    return [
      pintarBoton(metodo: () {}, componente: Text("0")),
      pintarBoton(metodo: () {}, componente: Text(",")),
      pintarBoton(metodo: () {}, componente: Text("%")),
      pintarBoton(metodo: () {}, componente: Text("+")),
      pintarBoton(
          metodo: () {},
          componente: Text("="),
          valorFlex: 3,
          colorbuton: Colors.green),
    ];
  }
}
