import 'package:flutter/material.dart';
import 'package:sadad/consts.dart';
import 'package:stacked/stacked.dart';
import 'processing_viewmodel.dart';

class ProcessingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProcessingViewModel>.reactive(
        builder: (context, model, child) => Container(
          child: Stack(
            children: <Widget>[
              Container(
                child: Image.asset('images/background3.png'),
                color: Colors.black,
              ),
              Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(150),
                  child: AppBar(
                    title: Text(
                      'جاري سحب القيمة',
                      style: TextStyle(
                          fontFamily: 'CairoR', color: Colors.white),
                    ),
                    actions: <Widget>[
                      PopupMenuButton<String>(
                          itemBuilder: (BuildContext context) {
                            return null;
                          })
                    ],
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                  ),
                ),
                backgroundColor: Colors.transparent,
                body: Column(
                  children: <Widget>[
                    Hero(
                      tag: 'STACK',
                      child: Stack(
                        children: <Widget>[
                          Center(
                            child: Container(
                              decoration: kDesign.copyWith(
                                color: Colors.white,
                              ),
                              height: 400,
                              width: 300,

                            ),
                          ),
                          Positioned(
                            left: 35,
                            child: Image(
                              image: AssetImage('images/Mask Group 1.png'),
                              height: 80,
                            ),
                          ),
                          Positioned(
                            top: 35,
                            right: 29,
                            child: Image(
                              image: AssetImage('images/Subtraction 1.png'),

                            ),
                          ),

                          Positioned(
                            bottom: 60,
                            left: 45,
                            child: Text(
                              '5649 LYD',
                              style: TextStyle(
                                fontFamily: 'WorkSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 35,
                            left: 45,
                            child: Text(
                              '**** 8936',
                              style: TextStyle(
                                fontFamily: 'WorkSans',
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 167 , top: 15),
                      child: Text(
                        'رصيدك في سداد',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'CairoR',
                          fontSize: 20.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        viewModelBuilder: () => ProcessingViewModel());
  }
}