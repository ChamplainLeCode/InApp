import 'package:flutter/material.dart';
import 'package:in_app/app/utils/Style.dart';
import 'package:karee/navigation.dart';
import 'package:karee/widgets.dart';

/// Component - Champ d'entré du formulaire
///
class ConfirmPasswordField extends StatelessComponent {
  final TextEditingController _pass;
  final TextEditingController _confirmPass;

  /// Prends le texte indicateur de l'entrée attendue dans le champ
  ConfirmPasswordField(this._pass, this._confirmPass);

  @override
  Widget builder(BuildContext context) {
    return ClipRRect(
      child: Container(
          height: 40,
          margin:
              const EdgeInsets.only(bottom: 10, top: 10, left: 50, right: 50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Style.whiteText,
            boxShadow: [
              BoxShadow(
                color: Color(0xff40767676), //.withOpacity(0.1),
                offset: Offset(-1.0, 0.0), //(x,y)
                blurRadius: 10.0,
              ),
            ],
          ),

          /// champ d'entréé
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 6),
              border: InputBorder.none,
              hintText: "Confirm Password",
              hintStyle: TextStyle(
                fontSize: 12.0,
              ),
            ),

            controller: _confirmPass,

            /// Validateur pour la champ de confirmation du mot de passe
            validator: (value) {
              return KareeRouter.goto('/validation/confirmPassword',
                  parameter: [_pass.text, value]);
            },
          )),
    );
  }
}
