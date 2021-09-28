import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:karee/annotations.dart';
import 'package:karee/widgets.dart';

/// Generated Karee Screen
///
/// `ProductDetailScreen` is set as Screen with name ``
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
        // Contenu de la page. Pas d'AppBar
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
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Salmon and Zucchini', // Nom du produit
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                          ),
                                        ),
                                        Text(
                                          'Italian cuisine', // type du produit ou non du vendeur
                                          style: TextStyle(
                                            color: Color(0xff909195),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Icon(
                                        // Note du produit
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 35,
                                      ),
                                      Text(
                                        '4.5',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xff45222F),
                                        ),
                                        child: Icon(
                                          // Ajout d'un produit au panier
                                          Icons.add,
                                          color: Color(0xffCBA8AA),
                                        ),
                                        onPressed: () {},
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        '2', // Quantité ajouté au panier
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xff45222F),
                                        ),
                                        child: Icon(
                                          // Suppression d'un produit au panier
                                          Icons.remove,
                                          color: Color(0xffCBA8AA),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '\$12.99', // Prix total du nombre de produit voulu
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: RichText(
                                      text: TextSpan(
                                        text:
                                            'Ingredients\n', // Plus d'informations sur le produit
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                        children: [
                                          TextSpan(
                                            text:
                                                'Mixed with few meat and some other stuffs to prepare the sweet delicious salmon meal. Eat and Enjoy!!',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Maria and 35 others liked this', // Les utilisateurs qui ont aimé
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            '4.5 of 5',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff222433),
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
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
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    color: Colors.green,
                                                  ),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
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
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          // Note de  l'utilisateur
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 25,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 25,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 25,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 25,
                                            ),
                                            Icon(
                                              Icons.star_border_outlined,
                                              color: Colors.grey,
                                              size: 25,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: double.infinity,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(7),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(2, 0, 10, 7),
                                    color: Color(0xff4F2531),
                                    child: IconButton(
                                      // Boutton j'aime
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite,
                                        color: Color(0xffE13C47),
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(50),
                                    ),
                                    child: ElevatedButton(
                                      onPressed:
                                          () {}, // Bouton d'ajout du produit au panier
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        primary: Color(0xffE13C47),
                                        padding:
                                            EdgeInsets.fromLTRB(60, 20, 60, 20),
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
                                  ),
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
