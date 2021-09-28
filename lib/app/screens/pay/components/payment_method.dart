import 'package:flutter/material.dart';
import 'package:karee/widgets.dart';

// Component réutilisable pour générer un mode de paiement sur la screen
class PaymentMethod extends StatelessComponent {
  final String paymentMethodLogo; // CHeemin vers la svg du logo
  final String paymentMethodText; // Texte indicateur du mode de paiement

  PaymentMethod(this.paymentMethodLogo, this.paymentMethodText);

  // Renvoi un bouton adapté à celui de la maquette
  @override
  Widget builder(BuildContext context) {
    return ElevatedButton(
      onPressed: () {}, //
      style: ElevatedButton.styleFrom(
        elevation: 1,
        primary: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 5),
                color: Color(0xffF1F1F1),
                child: Image.asset(
                  paymentMethodLogo,
                  width: 50,
                  height: 50,
                ),
                width: 70,
                height: 60,
              ),
              Container(
                child: Text(
                  paymentMethodText,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff123456),
                  ),
                ),
                width: 100,
                margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
            ),
            color: Color(0xff123456),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
