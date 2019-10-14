import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
    @override
    createState() {
        return _ContadorPageState();
    }
}

class _ContadorPageState extends State<ContadorPage> {

    final TextStyle _textStyle = new TextStyle(fontSize: 30.0);
    int _contador = 0;

    void _incrementarContador() {
        setState(() {
            _contador++;
        });
    }

    Widget _crearBotones() {
        return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
                SizedBox(width: 30.0),
                FloatingActionButton(onPressed: () {}, child: Icon(Icons.exposure_zero)),
                Expanded(child: SizedBox(width: 5.0)),
                FloatingActionButton(onPressed: () {}, child: Icon(Icons.remove)),
                SizedBox(width: 5.0),
                FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
            ],
        );
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Título'),
                centerTitle: true,
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text('Número de clicks:', style: _textStyle),
                        Text('$_contador', style: _textStyle)
                    ],
                )
            ),
            //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: _crearBotones()
        );
    }
}