import 'package:flutter/material.dart';
import 'package:sadad/consts.dart';
import 'package:sadad/mycontainer.dart';
import 'package:stacked/stacked.dart';
import 'wallet_viewmodel.dart';

class WalletView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WalletViewModel>.reactive(
        builder: (context, model, child) => Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Image.asset('images/background3.png'),
                    color: Colors.grey.shade100,
                  ),
                  Scaffold(
                    appBar: PreferredSize(
                      preferredSize: Size.fromHeight(150),
                      child: AppBar(
                        title: Text(
                          'بطاقاتك',
                          style: TextStyle(
                              fontFamily: 'CairoR', color: Colors.black),
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
                                    color: Colors.grey.shade700,
                                  ),
                                  height: 300,
                                  width: 200,
                                ),
                              ),
                              Center(
                                child: Container(
                                  decoration:
                                      kDesign.copyWith(color: Colors.grey),
                                  height: 290,
                                  width: 250,
                                ),
                              ),
                              Center(
                                child: GestureDetector(
                                  onTap: model.goToProcessing,
                                  child: Container(
                                    decoration: kDesign.copyWith(
                                      color: Colors.white,
                                    ),
                                    height: 280,
                                    width: 300,

                                  ),
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
                                top: 30,
                                right: 29,
                                child: Image(
                                  image: AssetImage('images/Subtraction 1.png'),
                                  height: 200,
                                ),
                              ),
                              Positioned(
                                top: 100,
                                right: 29,
                                child: Image(
                                  image: AssetImage('images/Subtraction 2.png'),
                                  height: 150,
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
                                  '**** 6489',
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
                        SizedBox(
                          height: 20.0,
                        ),
                        Column(
                          children: <Widget>[
                            MyContainer(
                              image: 'images/Target.png',
                              dText: 'Shopping',
                              date: '07/11/2020',
                              payment: '- 41',
                              payColor: Colors.red,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            MyContainer(
                                image: 'images/7 Eleven.png',
                                dText: 'Shopping',
                                date: '10/11/2020',
                                payment: '- 99',
                                payColor: Colors.red),
                            SizedBox(
                              height: 10.0,
                            ),
                            MyContainer(
                                image: 'images/Amazon.png',
                                dText: 'Salary/bonus',
                                date: '03/10/2020',
                                payment: '+ 398',
                                payColor: Colors.green),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
        viewModelBuilder: () => WalletViewModel());
  }
}
