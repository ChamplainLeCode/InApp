import 'package:flutter/material.dart';
import 'package:karee/karee.dart';

/// Component - Liste de bouton pour définir le rating du produit
///
class RatingsRow extends StatelessComponent {
  @override
  Widget builder(BuildContext context) {
    return Row(
      // Note de  l'utilisateur
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.star,
            color: Colors.yellow,
            size: 25,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.star,
            color: Colors.yellow,
            size: 25,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.star,
            color: Colors.yellow,
            size: 25,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.star,
            color: Colors.yellow,
            size: 25,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.star_border_outlined,
            color: Colors.grey,
            size: 25,
          ),
        ),
      ],
    );
  }
}
