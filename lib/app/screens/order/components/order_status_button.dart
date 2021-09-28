import 'package:flutter/material.dart';
import 'package:karee/widgets.dart';

// Components réutilisable de filtrage du statut de la commande
// A son clique il changera le statut de la page
// Ceci pour afficher les commandes par statuts
class OrderStatusButton extends StatelessComponent {
  final String orderStatusText; // text de statut des commande dans le bouton

  OrderStatusButton(this.orderStatusText);

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
            primary: Colors.white,
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          ),
          onPressed: () {},
          child: Text(
            orderStatusText,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
