import 'package:flutter/material.dart';
import 'package:karee/widgets.dart';

/// Component - Boutons d'actions de fin de page
/// Ce component est spécialment défini pour cause de refactor du order_detail_screen
///
class OrderDetailsButton extends StatelessComponent {
  /// Texte indiquant l'action du bouton
  final String buttonText;

  /// Choix du style pour le bouton
  final int buttonStyle;

  OrderDetailsButton(this.buttonText, this.buttonStyle);
  @override
  Widget builder(BuildContext context) {
    return Container(
      child: buttonStyle == 0
          ? Align(
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
                            buttonText,
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
            )
          : Align(
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
                            buttonText,
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
    );
  }
}
