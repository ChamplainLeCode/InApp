import 'package:flutter/material.dart';
import 'package:karee/widgets.dart';

/// Component - Pour ajouter le produit dans le panier
///
class AddToCartButton extends StatelessComponent {
  @override
  Widget builder(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(50),
      ),
      child: ElevatedButton(
        onPressed: () {}, // Bouton d'ajout du produit au panier
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: Color(0xffE13C47),
          padding: EdgeInsets.fromLTRB(60, 20, 60, 20),
        ),
        child: Text(
          'Add to cart',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
