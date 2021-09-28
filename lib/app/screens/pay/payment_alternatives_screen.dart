import 'package:flutter/material.dart';
import 'package:in_app/app/screens/pay/components/payment_method.dart';

import 'package:karee/annotations.dart';
import 'package:karee/widgets.dart';

/// Generated Karee Screen
///
/// `PaymentAlternativesScreen` is set as Screen with name ``
@Screen('paymentalternatives', isInitial: true)
class PaymentAlternativesScreen extends StatefulScreen {
  _PaymentAlternativesState createState() => new _PaymentAlternativesState();
}

class _PaymentAlternativesState extends ScreenState<PaymentAlternativesScreen> {
  @override
  Widget builder(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Barre supérieure
        // Barre supé
        leading: IconButton(
          // Retour en arrière
          icon: Icon(Icons.arrow_back),
          color: Color(0xff123456),
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
              PaymentMethod('assets/images/visa.png',
                  'VISA'), // Buttons du mode de paiements
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
                          Text(
                            'Total 119.00GBP', // Montant total de la transaction
                            style: TextStyle(
                              color: Color(0xff123456),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
