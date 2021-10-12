import 'package:flutter/material.dart';
import 'package:in_app/app/screens/pay/components/payment_method.dart';

import 'package:karee/annotations.dart';
import 'package:karee/widgets.dart';

/// Generated Karee Screen
///
/// `PaymentAlternativesScreen` is set as Screen with name `paymentalternatives`
@Screen('paymentalternatives', isInitial: false)
class PaymentAlternativesScreen extends StatefulScreen {
  _PaymentAlternativesState createState() => new _PaymentAlternativesState();
}

class _PaymentAlternativesState extends ScreenState<PaymentAlternativesScreen> {
  @override
  Widget builder(BuildContext context) {
    return Scaffold(
      /// Barre supérieure de statut de navigation
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xff123456),

          /// Retour en arrière
          onPressed: () {},
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Text(
                      'SELECT A PAYMENT METHOD',
                      style: TextStyle(
                        color: Color(0xff123456),
                        fontSize: 19,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              /// Listes des modes de paiements

              PaymentMethod('assets/images/visa.png', 'VISA'),

              SizedBox(
                height: 1,
              ),
              PaymentMethod('assets/images/amex.png', 'AMEX'),
              SizedBox(
                height: 1,
              ),
              PaymentMethod('assets/images/applepay.jpg', 'Apple Pay'),
              SizedBox(
                height: 1,
              ),
              PaymentMethod('assets/images/paypal.jpeg', 'Paypal'),
              SizedBox(
                height: 1,
              ),
              PaymentMethod('assets/images/mobile-money.jpg', 'Mobile Money'),
              SizedBox(
                height: 1,
              ),
              PaymentMethod('assets/images/orange-money.jpg', 'Orange Money'),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          /// Montant total de la transaction
                          Text(
                            'Total 119.00GBP',
                            style: TextStyle(
                              color: Color(0xff123456),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          /// VAT ?
                          Text(
                            '* VAT included',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_circle_up_sharp,
                      ),
                      color: Color(0xff123456),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
