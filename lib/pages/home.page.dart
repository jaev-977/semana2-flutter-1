import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: _listaBotones()),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: _listaBotones2()),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: _listaBotones3()),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: _listaBontones4()),
                ],
              ),
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

  _listaBotones() {
    return [
      ElevatedButton(onPressed: () {}, child: Text("7")),
      ElevatedButton(onPressed: () {}, child: Text("8")),
      ElevatedButton(onPressed: () {}, child: Text("9")),
      ElevatedButton(onPressed: () {}, child: Text("/")),
      ElevatedButton(onPressed: () {}, child: Icon(Icons.replay)),
      ElevatedButton(onPressed: () {}, child: Text("C"))
    ];
  }

  _listaBotones2() {
    return [
      ElevatedButton(onPressed: () {}, child: Text("4")),
      ElevatedButton(onPressed: () {}, child: Text("5")),
      ElevatedButton(onPressed: () {}, child: Text("6")),
      ElevatedButton(onPressed: () {}, child: Text("x")),
      ElevatedButton(onPressed: () {}, child: Text("(")),
      ElevatedButton(onPressed: () {}, child: Text(")"))
    ];
  }

  _listaBotones3() {
    return [
      ElevatedButton(onPressed: () {}, child: Text("1")),
      ElevatedButton(onPressed: () {}, child: Text("2")),
      ElevatedButton(onPressed: () {}, child: Text("3")),
      ElevatedButton(onPressed: () {}, child: Text("-")),
      ElevatedButton(onPressed: () {}, child: Text("x²")),
      ElevatedButton(onPressed: () {}, child: Text("√"))
    ];
  }

  _listaBontones4() {
    return [
      ElevatedButton(onPressed: () {}, child: Text("0")),
      ElevatedButton(onPressed: () {}, child: Text(",")),
      ElevatedButton(onPressed: () {}, child: Text("%")),
      ElevatedButton(onPressed: () {}, child: Text("+")),
      ElevatedButton(
        onPressed: () {},
        child: Container(
          child: Row(
            children: [
              Text("="),
            ],
          ),
          color: Colors.green,
        ),
      ),
    ];
  }
}
