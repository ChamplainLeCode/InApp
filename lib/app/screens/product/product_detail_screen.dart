import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:in_app/app/screens/product/components/Add_to_cart_button.dart';
import 'package:in_app/app/screens/product/components/favourite_button.dart';
import 'package:in_app/app/screens/product/components/product_informations.dart';

import 'package:karee/annotations.dart';
import 'package:karee/widgets.dart';

/// Generated Karee Screen
///
/// `ProductDetailScreen` is set as Screen with name `productdetail`
@Screen('productdetail', isInitial: false)
class ProductDetailScreen extends StatefulScreen {
  _ProductDetailState createState() => new _ProductDetailState();
}

class _ProductDetailState extends ScreenState<ProductDetailScreen> {
  @override
  Widget builder(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        /// Contenu de la page. Pas d'AppBar
        width: mediaSize.width,
        height: mediaSize.height,
        child: Stack(
          // Elements empilés par position
          children: [
            SizedBox(
              child: Image.asset(
                //Image du produit
                'assets/images/aloe.jpg',
                fit: BoxFit.cover,
              ),
              width: mediaSize.width,
              height: mediaSize.height * 0.5, // Prends 50% de la page
            ),
            Positioned(
              bottom: 0,
              child: ClipRRect(
                // POur les bords arrondis
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
                child: Container(
                  // Contenu du détail du produit
                  width: mediaSize.width,
                  height: mediaSize.height * 0.6,
                  color: Color(0xff1A1C29),
                  child: SingleChildScrollView(
                    // Rendre ce contenu scrollable
                    child: Column(
                      children: [
                        ProductInformations(),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: double.infinity,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                FavouriteButton(),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: AddToCartButton(),
                                  flex: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 20,
              child: SafeArea(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    width: 40,
                    height: 40,
                    color: Color(0xff222433),
                    child: Align(
                      alignment: Alignment.center,
                      child: IconButton(
                        icon: Icon(
                          // Bouton de retour en arrière
                          Icons.arrow_back_ios_new,
                          color: Color(0xff909195),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: SafeArea(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    width: 40,
                    height: 40,
                    color: Color(0xff222433),
                    child: Align(
                      alignment: Alignment.center,
                      child: IconButton(
                        // Bouton de navigation vers le panier
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                          color: Color(0xff909195),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
