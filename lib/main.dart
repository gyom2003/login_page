import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //le body est un container
      body: Container(
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.black,
              height: 400, 
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'), 
                  fit: BoxFit.fill
                )
              ),
              //overlap plusieur images avec Sack et comme child Container
              child: Stack
              (
                overflow: Overflow.visible,
                children: <Widget>[ 
              Positioned(
                //les dimensions 
                left: 20,
                width: 100,
                height: 200,
                child: Container(
                  color: Colors.black,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/light-1.png'),
                    )
                  ),
                ),
              ),
              Positioned(
                //les dimensions
                left: 150,
                width: 80,
                height: 155,
                child: Container(
                  color: Colors.black,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/light-2.png"),
                  )
                ),
              ),
            ),
            Positioned(
              //les dimensions
              left: 260,
              width: 100,
              height: 160,
              child: Container(
                color: Colors.black,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/clock.png"),
                )
              ),
            ),
          ),
          Positioned(
            child: Container(
              color: Colors.black,
               //espace eterieur 
              margin: EdgeInsets.only(
                top: 35,
                //bottom: 5,
                //right: , 
                //left: ,
              ),
              child: Center(
                child: Text("Login", 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),),),),)

        ]
      ,) ),
      //ajouter 2containers 2 colonnes pour le TextField()
      Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: <Widget>[
            //container qui predefinie les limite de ses enfants
            Container(
              color: Colors.black,
              //espace, bordure, couleure
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: <Widget> [
                  //contient le container TextField()
                  Container(
                    color: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      //couleur, bordure shadow
                      //shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          //gromRGBO() prend des valeurs flottantes
                          color: Color.fromRGBO(
                            140, 140, 250, 2),
                            blurRadius: 15.0,
                            offset: Offset(0, 10),
                        ),
                      ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        //border effect
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(145, 148, 251, 1),
                            width: 3.0),
                            borderRadius: BorderRadius.all(Radius.circular(25.0))
                        ),
                        border: InputBorder.none,
                        hintText: "Email ou numéro de Téléphone ",
                        hintStyle: TextStyle(color: Colors.grey[500])
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                      boxShadow: [
                        BoxShadow(
                          //gromRGBO() prend en compte des valeurs flottantes et l'opacité 
                          color: Color.fromRGBO(
                            145, 148, 250, 2),
                            blurRadius: 15.0,
                            offset: Offset(0, 10),
                        ),
                      ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        //border effect
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(145, 148, 251, 1),
                            width: 3.0),
                            borderRadius: BorderRadius.all(Radius.circular(25.0))
                        ),
                        border: InputBorder.none,
                        hintText: "Mot de Passe : ",
                        hintStyle: TextStyle(color: Colors.grey[500])

                      ),
                    ),
                  ),
                ],
              ),
            ),
            //création boutton login
            SizedBox(height: 30),
              Container(
                color: Colors.black,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),

                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color.fromRGBO(145, 148, 251, 100),
                      Color.fromRGBO(145, 148, 251, 100),
                  ]
                )
              ),
              child: Center(
                child: FlatButton(
                  onPressed: null,
                   child: Text("Login: ", style: TextStyle(
                     color: Colors.white, fontWeight: FontWeight.bold,
                   ))),),
            ),
            //String mdp oublié
            SizedBox(height: 10,),
            Text("Mot de passe oublié ? ", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1),
            shadows: [
              Shadow(
                color: Colors.black,
                blurRadius: 1.0,
                offset: Offset(1, 1)
              )],
            ),),
          ],
        ),)
      ],),
    ),
  );
}}



