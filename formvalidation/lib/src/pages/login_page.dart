import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _crearFondo(context),
        ],
      )
    );
  }

  Widget _crearFondo(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final fondoMorado= Container(
      height: size.height*0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromRGBO(63, 63, 156, 1.0),
            Color.fromRGBO(90, 70, 178, 1.0),
            ]
        )
      ),
    );

    final circulo= Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Colors.white10,
      )
    );

    return Stack(
      children: [
        fondoMorado,
        Positioned(child: circulo,top: 90.0,left: 30.0,),
        Positioned(child: circulo,top: -40.0,right: -40.0,),
        Positioned(child: circulo,bottom: -50.0,right: 30.0,),
        Container(
          padding: EdgeInsets.only(top:80.0),
          child: Column(            
            children: [
              Icon(Icons.person_pin_circle, color: Colors.white, size: 100.0,),
              SizedBox(height: 10.0, width: double.infinity,),
              Text("Isai R B", style: TextStyle(color: Colors.white,fontSize: 25.0), )              
            ],
          ),
        )
        
      ],
    );
  }
}