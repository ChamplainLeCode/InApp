import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:karee/karee.dart';

// Component réutilisable du mode de connexion
class SocialButton extends StatelessComponent {
  // Variable contenant le chemin vers le svg du réseau social choisi
  final String svgPath;

  // Prends le lien vers le svg
  SocialButton(this.svgPath);

  @override
  Widget builder(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 1,
        primary: Colors.white,
      ),
      onPressed: () {}, //
      child: SvgPicture.asset(
        // Svg du réseau social
        svgPath,
        width: 25,
        height: 25,
      ),
    );
  }
}
