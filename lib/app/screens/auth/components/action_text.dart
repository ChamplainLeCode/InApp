import 'package:flutter/material.dart';
import 'package:karee/widgets.dart';

/// Component - Fonction du formulaire
///
class ActionText extends StatelessComponent {
  /// Texte indicateur d'action
  final String actionText;

  /// Prends le texte indicateur d'action
  ActionText(this.actionText);

  @override
  Widget builder(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(50, 45, 0, 0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          actionText,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
