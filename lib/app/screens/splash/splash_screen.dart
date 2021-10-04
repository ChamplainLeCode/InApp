import 'package:flutter/material.dart';
import 'package:in_app/app/utils/Style.dart';
import 'package:karee/annotations.dart';
import 'package:karee/navigation.dart';
import 'package:karee/widgets.dart';

/// Generated Karee Screen
///
/// `SplashScreen` is set as Screen with name `spalsh`
@Screen('spalsh', isInitial: true)
class SplashScreen extends StatefulScreen {
  _SplashState createState() => new _SplashState();
}

class _SplashState extends ScreenState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () => KareeRouter.goto("/login"));
    // Future.delayed(Duration(seconds: 2), () => KareeRouter.goto("/signup"));
    // Future.delayed(
    //     Duration(seconds: 2), () => KareeRouter.goto("/paymentalternatives"));
    // Future.delayed(Duration(seconds: 2), () => KareeRouter.goto("/order"));
    // Future.delayed(
    //     Duration(seconds: 2), () => KareeRouter.goto("/orderdetail"));
    // Future.delayed(
    //     Duration(seconds: 2), () => KareeRouter.goto("/productdetail"));
  }

  @override
  Widget builder(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF123456),
        body: Column(children: [
          Spacer(
            flex: 2,
          ),
          // SvgPicture.asset(
          //   'assets/images/inApp.svg',
          //   color: Colors.white,
          // // ),
          // ElevatedButton(
          //     onPressed: () {
          //       print('tap before');
          //       KareeRouter.goto("/login");
          //       print('tap after');
          //     },
          //     child: Text('Login')),
          Align(
              alignment: Alignment.center,
              child: Text('InApp',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: Style.fontFamilyPacifico,
                      fontSize: 70))),
          Align(
              alignment: Alignment.center,
              child: Text('Votre Fidèle Boutique',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: Style.fontFamilyLora,
                      fontSize: 20))),
          Spacer(
            flex: 3,
          ),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                'By Bixterprise',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: Style.fontFamilyLora,
                    color: Colors.white54,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ))
        ]

            //        Text(
            // 'Splash',
            // style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
            //)

            ));
  }
}
