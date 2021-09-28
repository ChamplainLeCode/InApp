import 'package:flutter/material.dart';

import 'package:karee/annotations.dart';
import 'package:karee/widgets.dart';

import 'components/order_detail_card.dart';

/// Generated Karee Screen
///
/// `OrderDetailScreen` is set as Screen with name ``
@Screen('orderdetail', isInitial: false)
class OrderDetailScreen extends StatefulScreen {
  _OrderDetailState createState() => new _OrderDetailState();
}

class _OrderDetailState extends ScreenState<OrderDetailScreen> {
  var _itemsIndex = 4;

  // void _incrementOrderNumberItemsNumber(int itemsIndex) {
  //   setState(() {
  //     _itemsIndex = _itemsIndex + 1;
  //   });
  // }

  // void _decrementOrderNumberItemsNumber(int itemsIndex) {
  //   setState(() {
  //     _itemsIndex = _itemsIndex - 1;
  //   });
  // }

  @override
  Widget builder(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Barre de navigation supérieure
        leading: IconButton(
          // Retour en arrière
          icon: Icon(Icons.arrow_back),
          color: Color(0xff123456),
          onPressed: () {},
        ),
        title: Text(
          // Texte de statut de page
          'Order details',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        // Pagescrollable même à la rotation
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
                      Text(
                        'Order N#1947034', // Référence de commande
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '02-01-2019', // Date de commande
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
                        text: "Tracking Number: ", // Tracking Number
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        children: [
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
                    // Statut de la commande
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Delivered',
                        style: TextStyle(
                          color: Color(0xff72D85A),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // Nombre de produits dans la commande
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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
                    // Liste des produits de la commande empilées
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
                  Container(
                    // Autres détails de la commande
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              'Order information',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text('Shopping Address:'),
                              flex: 2,
                            ),
                            Expanded(
                              child: Text(
                                  '3 Newbrige Court, Chino Hills, CA 91709,  United States'),
                              flex: 3,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text('Payment Method'),
                              flex: 2,
                            ),
                            Expanded(
                              child: Container(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/mobile-money.jpg', // Image indicateur de la méthode de paiement
                                      width: 30,
                                      height: 30,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                        '**** **** **** 3947'), // Numéro de mode de paiement
                                  ],
                                ),
                              ),
                              flex: 3,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text('Discount'), // Réduction ?
                              flex: 2,
                            ),
                            Expanded(
                              child: Text('Nil'),
                              flex: 3,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                  'Total Amount'), // Montant total de la commande
                              flex: 2,
                            ),
                            Expanded(
                              child: Text('\$${12 * _itemsIndex}'),
                              flex: 3,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(50),
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Color(0xffE13C47),
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 120),
                          ),
                          child: Text(
                            'Re-order',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      flex: 10,
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 30,
                      ),
                      flex: 1,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 30,
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(50),
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Color(0xff222433),
                            padding: EdgeInsets.fromLTRB(100, 20, 60, 20),
                          ),
                          child: Text(
                            'Leave Feedback',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      flex: 10,
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
    );
  }
}
