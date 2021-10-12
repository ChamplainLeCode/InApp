import 'package:flutter/material.dart';
import 'package:karee/widgets.dart';

/// Component - Bouton de filtrage à l'affichage des commandes par statut
/// A son clique il changera le statut de la page
///
class OrderStatusButton extends StatelessComponent {
  /// Contenu du bouton de statut
  final String orderStatusText;

  /// Si selectionné
  final bool selected;

  /// Prends le texte du bouton de statut et son état
  OrderStatusButton(this.orderStatusText, this.selected);

  @override
  Widget builder(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: selected ? Colors.black : Colors.white,
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          ),
          onPressed: () {},
          child: Text(
            orderStatusText,
            style: TextStyle(
              color: selected ? Colors.white : Colors.black,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
