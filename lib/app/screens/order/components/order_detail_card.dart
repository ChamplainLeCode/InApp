import 'package:flutter/material.dart';
import 'package:karee/widgets.dart';

// Component réutilisable pour créer un carte de produits dans la page
// de détail d'une commande
class OrderDetailCard extends StatelessComponent {
  // Informations du produit
  // *Liste non exhaustive
  final String productName; // Nom du produit
  final String sellerName; // Nom du vendeur
  final double productPrice; // Prix du produit
  final String productImagePath; // Chemin vers l'image du produit
  final double productRating; // Note sur le produit

  OrderDetailCard(this.productImagePath, this.productName, this.sellerName,
      this.productPrice, this.productRating);

  @override
  Widget builder(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 115,
        color: Color(0xffECECEC),
        width: double.infinity,
        child: Stack(
          children: [
            Row(
              children: [
                Image.asset(
                  // Image du produit
                  productImagePath,
                  fit: BoxFit.cover,
                  width: 130,
                  height: double.infinity,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                // Nom du produit
                                productName,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          // nom du vendeur
                          sellerName,
                          style: TextStyle(
                            color: Color(0xff797979),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          // Prix du produit affiché avec une précision de 4 (c-a-d = nombre.00)
                          '\$${productPrice.toStringAsPrecision(4)} ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 4,
                ),
                color: Colors.white,
                child: Row(
                  // Note du produit
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[700],
                      size: 15,
                    ),
                    Text(
                      productRating.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // Icone cliquable de suppression de produit de la commande
              top: 0,
              right: 0,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.close,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
