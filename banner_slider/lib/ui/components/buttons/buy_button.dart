
import 'package:flutter/material.dart';

class BuyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 35,
        width: 200,
        decoration:  BoxDecoration(
            color: Colors.black12.withOpacity(0.5),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        margin:const EdgeInsets.all(16),
        child:  TextButton(
              onPressed: () {
                //NavigationApp.pushCenter(BootCampScreen());
              },
              child: const Text("Comprar ahora",
                  style: TextStyle(color: Colors.white)),
            ));
  }

}