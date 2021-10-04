import 'package:flutter/material.dart';
import 'package:karee/widgets.dart';

// Component - Utilisé pour l'envoi du formulaire
class FormButton extends StatelessComponent {
  final String text;
  final VoidCallback? onTap;
  final Color color;

  FormButton(
      {required this.text, this.onTap, this.color = const Color(0xff123456)});

  @override
  Widget builder(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 8.0,
            textStyle: const TextStyle(fontSize: 20),
            primary: this.color,
            padding: EdgeInsets.symmetric(horizontal: 113, vertical: 10),
          ),
          onPressed: onTap,
          child: Text(
            this.text,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ));
  }
}
