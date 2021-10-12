import 'package:flutter/material.dart';
import 'package:karee/karee.dart';

/// Component - Pseudo liste des utilisateurs ayant aimé le produit
///
class UsersLikedRow extends StatelessComponent {
  @override
  Widget builder(BuildContext context) {
    return Row(
      children: List.generate(
        4,
        (index) => Row(
          children: [
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(50),
                color: Colors.green,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/images/aloe.jpg', // Échantillon d'images des utilisateurs ayant noté le produit
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
      ).toList(),
    );
  }
}
