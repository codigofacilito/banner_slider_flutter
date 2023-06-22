import 'dart:ui';

import 'package:flutter/material.dart';

class Offer {
  int id;
  String title;
  String description;
  Color? color;
  String image;

  Offer({this.id=0,this.title="",this.description="",this.color,this.image=""});

  static List getOffers(){
    return [
      Offer(id:1,title: "Tenis Adidas:",description: "Exclusivo 20 % de descuento",color: Colors.pink[200],image: "adidas.png"),
      Offer(id:2,title: "Tenis Converse:",description: "Nuevos diseños",color: Colors.amber[600],image: "converse.png"),
      Offer(id:3,title: "Tenis Nike:",description: "Exclusivo 30 % de descuento",color: Colors.blue[200],image: "nike1.png"),
      Offer(id:4,title: "Tenis Nike:",description: "Renueva sus zapatillas con un giro futurista",color: Colors.red[300],image: "nike2.png"),
    ];
  }
}

