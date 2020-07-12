import 'package:flutter/material.dart';

import 'consts.dart';

class MyContainer extends StatelessWidget {
  final String image;
  final String dText;
  final String date;
  final String payment;
  final Color payColor;

  MyContainer({@required this.image, @required  this.dText, @required this.date, @required this.payment, @required this.payColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kDesign.copyWith(
        color: Colors.white,
      ),
      height: 50,
      width: 300,
      child: Stack(
        children: <Widget>[
          Positioned(
              top: 14,
              left: 7,
              child:
              Container(child: Image(image: AssetImage(image)))),
          SizedBox(
            width: 10,
          ),
          Positioned(
            left: 45,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    dText,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontFamily: 'WorkSansR',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: 6, left: 3),
                  child: Text(
                    date,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'WorkSansR',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 14,
            right: 15,
            child: Text(
              payment,
              style: TextStyle(color: payColor),
            ),
          )
        ],
      ),
    );
  }
}