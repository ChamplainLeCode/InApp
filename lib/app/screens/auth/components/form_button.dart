import 'package:flutter/material.dart';
import 'package:karee/widgets.dart';

/// Component - Envoi du formulaire
///
class FormButton extends StatelessComponent {
  /// Contenu du bouton
  final String buttonText;

  /// Prends le texte d'action du bouton
  FormButton(this.buttonText);

  @override
  Widget builder(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 8.0,
        textStyle: const TextStyle(fontSize: 20),
        primary: Color(0xff123456),
        padding: EdgeInsets.symmetric(horizontal: 113, vertical: 10),
      ),
      onPressed: () {},
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }
}
