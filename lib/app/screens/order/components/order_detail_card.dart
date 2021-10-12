import 'package:flutter/material.dart';
import 'package:karee/widgets.dart';

/// Component - Carte de detail d'un produit
///
class OrderDetailCard extends StatelessComponent {
  /// Nom du produit
  final String productName;

  /// Nom du vendeur
  final String sellerName;

  /// Prix du produit
  final double productPrice;

  /// Chemin vers l'image du produit
  final String productImagePath;

  /// Note sur le produit
  final double productRating;

  /// Prends le nom,prix,chemin vers l'image,note du produit et le nom du vendeur
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
                /// Image du produit
                Image.asset(
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
                              /// Nom du produit
                              child: Text(
                                productName,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),

                        /// nom du vendeur
                        Text(
                          sellerName,
                          style: TextStyle(
                            color: Color(0xff797979),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),

                        /// Prix du produit affiché avec une précision de 4 (c-a-d = nombre.00)
                        Text(
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
              top: 0,
              right: 0,

              /// Icone cliquable de suppression de produit de la commande
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.close,
                  size: 20,
                ),
              ),
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

                /// Note du produit
                child: Row(
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
          ],
        ),
      ),
    );
  }
}
