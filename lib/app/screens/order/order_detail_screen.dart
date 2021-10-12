import 'package:flutter/material.dart';
import 'package:in_app/app/screens/order/components/order_details_button.dart';
import 'package:in_app/app/screens/order/components/order_information.dart';

import 'package:karee/annotations.dart';
import 'package:karee/widgets.dart';

import 'components/order_detail_card.dart';

/// Generated Karee Screen
///
/// `OrderDetailScreen` is set as Screen with name `orderdetail`
@Screen('orderdetail', isInitial: false)
class OrderDetailScreen extends StatefulScreen {
  _OrderDetailState createState() => new _OrderDetailState();
}

class _OrderDetailState extends ScreenState<OrderDetailScreen> {
  var _itemsIndex = 4;

  @override
  Widget builder(BuildContext context) {
    return Scaffold(
      /// Barre de navigation supérieure
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xff123456),

          /// Retour en arrière
          onPressed: () {},
        ),
        // Statut de navigation
        title: Text(
          'Order details',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),

      /// Page scrollable à la rotation
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Référence de commande
                      Text(
                        'Order N#1947034',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),

                      /// Date de commande
                      Text(
                        '02-01-2019',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    child: RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        text: "Tracking Number: ",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        children: [
                          /// Tracking Number
                          TextSpan(
                            text: "IW3475453455",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      /// Statut de la commande
                      Text(
                        'Delivered',
                        style: TextStyle(
                          color: Color(0xff72D85A),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      /// Nombre de produits dans la commande
                      Text(
                        '${_itemsIndex.toString()} items',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Column(
                    /// Liste des produits de la commande empilées
                    children: List.generate(
                        _itemsIndex,
                        (index) => Column(
                              children: [
                                OrderDetailCard(
                                    'assets/images/aloe.jpg',
                                    'Salmon and Zucchini',
                                    'Italian Chaffour',
                                    12.00,
                                    4.5),
                                SizedBox(
                                  height: 15,
                                )
                              ],
                            )).toList(),
                  ),

                  /// Autres informations sur la commande
                  OrderInformation(_itemsIndex),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),

            ///* Les chiifres définnisent le style du bouton
            /// Bouton de re-commandes
            OrderDetailsButton('Re-order', 0),
            SizedBox(
              height: 15,
            ),

            /// Bouton pour laisser des commantaires
            OrderDetailsButton('Leave Feedback', 1),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
