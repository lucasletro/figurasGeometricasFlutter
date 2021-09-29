import 'package:flutter/material.dart';
import 'Quadrado.dart';
import 'Circulo.dart';
import 'Triangulo.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}



class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

///////////////////////////////////////////////////////////////////////////////////


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Figuras Geometricas"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              Icon(Icons.calculate, size: 120, color: Colors.green,),

              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                child: Text("Escolha uma figura geometrica!", style: TextStyle(color: Colors.green, fontSize: 25),),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Quadrado() ));
                    },
                    child: Text(
                      "Quadrado",
                      style: TextStyle(color: Colors.white,fontSize: 25),
                    ),
                    color: Colors.green,
                  ),
                ),
              ),


              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Circulo() ));
                    },
                    child: Text(
                      "Circulo",
                      style: TextStyle(color: Colors.white,fontSize: 25),
                    ),
                    color: Colors.green,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Triangulo() ));
                    },
                    child: Text(
                      "Triangulo",
                      style: TextStyle(color: Colors.white,fontSize: 25),
                    ),
                    color: Colors.green,
                  ),
                ),
              ),

            ],
          ),
        )
      ),
    );
  }
}

