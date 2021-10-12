import 'package:flutter/material.dart';
import 'package:karee/karee.dart';

/// Component - Cartes d'une commande
///
class OrderCard extends StatelessComponent {
  @override
  Widget builder(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 160,
        color: Color(0xffECECEC),
        width: double.infinity,

        /// Affichage d'éléments par position
        child: Stack(
          children: [
            /// Informations sur la commande
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Référence de commande
                      Text(
                        'Order N#1947034',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      /// Date de commande
                      Text(
                        '02-01-2021',
                        style: TextStyle(
                          color: Color(0xff858585),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          text: "Tracking Number: ",
                          style: TextStyle(
                            color: Color(0xff858585),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
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
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          text: "Quantity: ",
                          style: TextStyle(
                            color: Color(0xff858585),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            /// Nombre de produits de la commande
                            TextSpan(
                              text: "3",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          text: "Total Amount:  ",
                          style: TextStyle(
                            color: Color(0xff858585),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            /// Prix total de la commande
                            TextSpan(
                              text: "\$6",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),

                          /// Bouton de navigation vers la page de détail de la commande
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: Color(0xffECECEC),
                              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                            ),
                            onPressed: () => KareeRouter.goto("/orderdetail"),
                            child: Text(
                              'Details',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),

                      /// Statut de la commande
                      Text(
                        'Delivered',
                        style: TextStyle(
                          color: Color(0xff72D85A),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
