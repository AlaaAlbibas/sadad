import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sadad/consts.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              body: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/background2.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.fingerprint,
                        size: 75.0,
                      ),
                      SizedBox(
                        height: 45.0,
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                            style: TextStyle(fontFamily: 'CairoS'),
                            decoration: kInputDecoration.copyWith(
                              prefixIcon: Icon(Icons.face),
                              labelText: 'أسم المستخدم',
                            )),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          obscureText: true,
                          decoration: kInputDecoration.copyWith(
                            prefixIcon: Icon(Icons.lock),
                            labelText: 'الرمز السري',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        child: MaterialButton(
                          onPressed: () {
                            model.LogIn();
                          },
                          child: Text(
                            'تسجيل الدخول',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'CairoR',
                            ),
                          ),
                          color: Colors.black,
                          height: 50.0,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: model.ForgotPassword,
                          child: Text(
                            'هل نسيت كلمة المرور ؟',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'CairoR'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
        viewModelBuilder: () => HomeViewModel());
  }
}
