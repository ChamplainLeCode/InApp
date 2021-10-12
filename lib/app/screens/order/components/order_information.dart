import 'package:flutter/material.dart';
import 'package:karee/widgets.dart';

/// Component - Informations supplémentaires sur la commande
///
class OrderInformation extends StatelessComponent {
  ///* Temporaire- Nombre d'items
  final int itemsIndex;

  /// Prends le nomnre d'items de la commande
  OrderInformation(this.itemsIndex);

  @override
  Widget builder(BuildContext context) {
    return Container(
      /// Autres détails de la commande
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
                /// Adresse du livreur
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
                      /// Image indicateur de la méthode de paiement
                      Image.asset(
                        'assets/images/mobile-money.jpg',
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 15,
                      ),

                      /// Numéro de mode de paiement
                      Text('**** **** **** 3947'),
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
                child: Text('Discount'),
                flex: 2,
              ),
              Expanded(
                /// Réduction ?
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
                child: Text('Total Amount'),
                flex: 2,
              ),
              Expanded(
                /// Montant total de la commande
                child: Text('\$${12 * itemsIndex}'),
                flex: 3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
