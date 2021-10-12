import 'package:flutter/material.dart';
import 'package:in_app/app/screens/product/components/product_add_button.dart';
import 'package:in_app/app/screens/product/components/product_remove_button.dart';
import 'package:in_app/app/screens/product/components/ratings_row.dart';
import 'package:in_app/app/screens/product/components/users_liked_row.dart';
import 'package:karee/widgets.dart';

/// Component - Conteneur des informations sur le produits à commander
///
class ProductInformations extends StatefulComponent {
  ProductInformations({Key? key}) : super(key: key);

  ProductInformationsState createState() => ProductInformationsState();
}

class ProductInformationsState extends ComponentState<ProductInformations> {
  @override
  Widget builder(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ProductAddButton(),
                  SizedBox(width: 10),
                  Text(
                    '2', // Quantité ajouté au panier
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  ProductRemoveButton(),
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
                    text: 'Ingredients\n', // Plus d'informations sur le produit
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    /// Liste des utilisateurs qui ont aimé le produit
                    child: UsersLikedRow(),
                  ),
                  Container(
                    /// RAting du produit donné par l'utilisateur
                    child: RatingsRow(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
