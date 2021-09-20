import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
    Future.delayed(Duration(minutes: 10), () => KareeRouter.goto('/home'));
  }

  @override
  Widget builder(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Spacer(
            flex: 2,
          ),
          // SvgPicture.asset(
          //   'assets/images/inApp.svg',
          //   color: Colors.white,
          // ),
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
