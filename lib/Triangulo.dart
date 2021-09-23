import 'package:flutter/material.dart';

class Triangulo extends StatefulWidget {
  @override
  _TrianguloState createState() => _TrianguloState();
}

class _TrianguloState extends State<Triangulo> {
  TextEditingController baseController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  TextEditingController ladoController = TextEditingController();
  String _infoText = "Informe seus dados!";

  void _resetFields(){
    baseController.text = "";
    alturaController.text = "";
    ladoController.text = "";
    setState(() {
      _infoText = "Informe seus dados!";
    });
  }

  void calcular(){
    setState(() {
      double base = double.parse(baseController.text);
      double altura = double.parse(alturaController.text);
      double lado = double.parse(ladoController.text);
      double area = (base * altura) / 2;
      double perimetro = lado * 3;
      _infoText = "Area: (${area}), Perímetro: (${perimetro})";
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TRIANGULO"),
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
            Icon(Icons.adaptive.share, size: 120, color: Colors.green,),

            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Digite a base do triangulo:",
                  labelStyle: TextStyle(color: Colors.green),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green, fontSize: 25),
                controller: baseController,
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Digite a altura do triangulo:",
                  labelStyle: TextStyle(color: Colors.green),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green, fontSize: 25),
                controller: alturaController,
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Digite o lado do triangulo:",
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
                height: 50,
                child: RaisedButton(
                  onPressed: calcular,
                  child: Text(
                    "Calcular",
                    style: TextStyle(color: Colors.white, fontSize: 25),
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
