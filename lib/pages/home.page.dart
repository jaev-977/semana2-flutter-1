import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:semanda2flutter1/widget/botones.widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _resultados = '0';
  String _ingreso = '';
  String _error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora - John Alejandro E."),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                child: Text(_resultados,
                    style: TextStyle(fontSize: 22, color: Colors.white70)),
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerRight,
                child: Column(
                  children: [
                    Text(_ingreso,
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          Text(_error, style: TextStyle(fontSize: 25, color: Colors.red)),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
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
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  nClik(String text) {
    setState(() {
      _ingreso += text;
    });
  }

  borratodo(String text) {
    setState(() {
      _resultados = '0';
      _ingreso = '';
    });
  }

  borrauno(String text) {
    setState(() {
      if (_ingreso.length >= 1) {
        _ingreso = _ingreso.substring(0, _ingreso.length - 1);
      }
      if (_ingreso.length == 0) {
        _ingreso = '0';
      }
    });
  }

  calcular(String text) {
    _error = '';
    if (text == "=") {
      Parser p = Parser();
      Expression exp = p.parse(_ingreso);
      ContextModel cm = ContextModel();

      setState(() {
        _resultados = _ingreso;
        _ingreso = exp.evaluate(EvaluationType.REAL, cm).toString();
      });
    }
    if (_ingreso == 'Infinity') {
      _error = 'Esta dividiendo por cero';
    }
  }

  _listaBotones() {
    return [
      pintarBoton(
          metodo: () {
            nClik("7");
          },
          componente: Text("7")),
      pintarBoton(
          metodo: () {
            nClik("8");
          },
          componente: Text("8")),
      pintarBoton(
          metodo: () {
            nClik("9");
          },
          componente: Text("9")),
      pintarBoton(
          metodo: () {
            nClik("/");
          },
          componente: Text("/")),
      pintarBoton(
          metodo: () {
            borrauno("d");
          },
          componente: Icon(Icons.replay)),
      pintarBoton(
          metodo: () {
            borratodo("c");
          },
          componente: Text("C")),
    ];
  }

  _listaBotones2() {
    return [
      pintarBoton(
          metodo: () {
            nClik("4");
          },
          componente: Text("4")),
      pintarBoton(
          metodo: () {
            nClik("5");
          },
          componente: Text("5")),
      pintarBoton(
          metodo: () {
            nClik("6");
          },
          componente: Text("6")),
      pintarBoton(
          metodo: () {
            nClik("*");
          },
          componente: Text("x")),
      pintarBoton(
          metodo: () {
            nClik("(");
          },
          componente: Text("(")),
      pintarBoton(
          metodo: () {
            nClik(")");
          },
          componente: Text(")")),
    ];
  }

  _listaBotones3() {
    return [
      pintarBoton(
          metodo: () {
            nClik("1");
          },
          componente: Text("1")),
      pintarBoton(
          metodo: () {
            nClik("2");
          },
          componente: Text("2")),
      pintarBoton(
          metodo: () {
            nClik("3");
          },
          componente: Text("3")),
      pintarBoton(
          metodo: () {
            nClik("-");
          },
          componente: Text("-")),
      pintarBoton(
          metodo: () {
            nClik("p");
          },
          componente: Text("x²")),
      pintarBoton(
          metodo: () {
            nClik("r");
          },
          componente: Text("√")),
    ];
  }

  _listaBontones4() {
    return [
      pintarBoton(
          metodo: () {
            nClik("0");
          },
          componente: Text("0")),
      pintarBoton(
          metodo: () {
            nClik(",");
          },
          componente: Text(",")),
      pintarBoton(
          metodo: () {
            nClik("%");
          },
          componente: Text("%")),
      pintarBoton(
          metodo: () {
            nClik("+");
          },
          componente: Text("+")),
      pintarBoton(
          metodo: () {
            calcular("=");
          },
          componente: Text("="),
          valorFlex: 2,
          colorbuton: Colors.green),
    ];
  }
}
