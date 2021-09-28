import 'package:flutter/material.dart';
import 'package:karee/widgets.dart';

// Component - Utilisé pour l'envoi du formulaire
class FormButton extends StatelessComponent {
  final String buttonText;

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
