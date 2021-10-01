import 'package:flutter/material.dart';
import 'package:in_app/app/utils/Style.dart';
import 'package:karee/widgets.dart';

// Component - Champ d'entréé du formulaire
//
class FormTextField extends StatelessComponent {
  // contenu indicateur de l'entrée attendue dans le champ
  final String fieldPlaceholder;

  FormTextField(this.fieldPlaceholder);

  @override
  Widget builder(BuildContext context) {
    return ClipRRect(
      child: Container(
        height: 40,
        margin: const EdgeInsets.only(bottom: 10, top: 10, left: 10, right: 10),
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
        child: TextFormField(
          // champ d'entréé
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 6),
            border: InputBorder.none,
            hintText: fieldPlaceholder,
            hintStyle: TextStyle(
              fontSize: 12.0,
            ),
          ),
        ),
      ),
    );
  }
}
