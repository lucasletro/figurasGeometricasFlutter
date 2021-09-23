import 'package:flutter/material.dart';

class Circulo extends StatefulWidget {
  @override
  _CirculoState createState() => _CirculoState();
}

class _CirculoState extends State<Circulo> {
  TextEditingController raioController = TextEditingController();
  String _infoText = "Informe seus dados!";


  void _resetFields(){
    raioController.text = "";
    setState(() {
      _infoText = "Informe seus dados!";
    });
  }

  void calcular(){
    setState(() {
      double raio = double.parse(raioController.text);
      double pi = 3.14;
      double area = pi * (raio * raio);
      double perimetro = 2 * pi * raio;
      _infoText = "Area: (${area}), Perímetro: (${perimetro})";

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CIRCULO"),
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
            
            Icon(Icons.circle, size: 120, color: Colors.green,),

            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Digite o raio do circulo:",
                  labelStyle: TextStyle(color: Colors.green),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green, fontSize: 25),
                controller: raioController,
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
