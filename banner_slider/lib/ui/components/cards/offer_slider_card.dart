import 'package:flutter/material.dart';

import '../../../models/offer.dart';
import '../buttons/buy_button.dart';

class OfferSliderCard extends StatelessWidget {
  Offer offer;

  OfferSliderCard(this.offer);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
        color: offer.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Stack(
              children: <Widget>[
                ListTile(
                      title: Text(
                        offer.title,
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      subtitle: Text(offer.description,
                          maxLines: 3,
                          style: TextStyle(

                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      "assets/images/${offer.image}",
                      fit: BoxFit.fitWidth,
                      width: 170,
                      height: 170,
                    )),
                Positioned(bottom: 0.0, left: 0.0, child: BuyButton()),
              ],
            )));
  }
}
