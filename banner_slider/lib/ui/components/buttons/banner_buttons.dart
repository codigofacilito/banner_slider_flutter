
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

import '../../../models/offer.dart';

class BannerButtons extends StatelessWidget{
  int index;
  CarouselController controller;
  BannerButtons(this.index,this.controller);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: <Widget>[
       ...Iterable<int>.generate(Offer.getOffers().length).map(
             (int pageIndex) => Flexible(
           child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20) ,
               child:SizedBox(
                   height: 10,
                   width:10,
                   child: FloatingActionButton(
                     heroTag: "floatingBanner $pageIndex",
                     elevation: 0,
                     backgroundColor: (pageIndex==index)?Colors.amber:Colors.grey,
                     onPressed: () => controller.animateToPage(pageIndex),
                   ))),
         ),
       ),
     ],
   );
  }

}