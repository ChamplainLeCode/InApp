import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:karee/karee.dart';

/// Component - Mode de connexion
///
class SocialButton extends StatelessComponent {
  /// Chemin vers le svg du réseau social
  final String svgPath;

  /// Prends le chemin vers le svg du réseau social correspondant
  SocialButton(this.svgPath);

  @override
  Widget builder(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 1,
        primary: Colors.white,
      ),
      onPressed: () {},

      /// Svg du réseau social
      child: SvgPicture.asset(
        svgPath,
        width: 25,
        height: 25,
      ),
    );
  }
}
