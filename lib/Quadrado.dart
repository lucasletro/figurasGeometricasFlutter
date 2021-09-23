import 'package:flutter/material.dart';

class Quadrado extends StatefulWidget {
  @override
  _QuadradoState createState() => _QuadradoState();
}

class _QuadradoState extends State<Quadrado> {
  TextEditingController ladoController = TextEditingController();
  String _infoText = "Informe seus dados!";

  void _resetFields() {
    ladoController.text = "";
    setState(() {
      _infoText = "Informe seus dados!";
    });
  }

  void _calcular(){
    setState(() {
      double lado = double.parse(ladoController.text) ;
      double area = lado * lado;
      double perimetro = lado * 4;
      _infoText = "Area: (${area}), Perímetro: (${perimetro})";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("QUADRADO"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _resetFields,
          )
        ],
      ),
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
            Icon(Icons.crop_square_sharp, size: 120, color: Colors.green,),
            
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Digite o lado do quadrado:",
                  labelStyle: TextStyle(color: Colors.green),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green, fontSize: 25),
                controller: ladoController,
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: _calcular,
                  child: Text(
                    "Calcular",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                  color: Colors.green,
                ),
              ),
            ),

            Text(
              _infoText, textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25),
            )

          ],
        ),
      ),
    );
  }
}
