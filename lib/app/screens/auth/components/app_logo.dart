import 'package:flutter/material.dart';
import 'package:in_app/app/utils/Style.dart';
import 'package:karee/widgets.dart';

// Component de logo in app personnalisé pour les pages de connexions
class AppLogo extends StatelessComponent {
  @override
  Widget builder(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        'InApp',
        style: TextStyle(
            color: Color(0xff123456),
            fontWeight: FontWeight.bold,
            fontFamily: Style.fontFamilyPacifico,
            fontSize: 30),
      ),
    );
  }
}
