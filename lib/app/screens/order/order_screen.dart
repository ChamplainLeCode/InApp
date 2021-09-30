import 'package:flutter/material.dart';
import 'package:in_app/app/screens/order/components/order_card.dart';
import 'package:in_app/app/screens/order/components/order_status_button.dart';

import 'package:karee/annotations.dart';
import 'package:karee/widgets.dart';

/// Generated Karee Screen
///
/// `OrderScreen` is set as Screen with name `order`
@Screen('order', isInitial: false)
class OrderScreen extends StatefulScreen {
  _OrderState createState() => new _OrderState();
}

class _OrderState extends ScreenState<OrderScreen> {
  @override
  Widget builder(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Barre indicatrice du statut de navigation
        leading: IconButton(
          // Retour en arrière
          icon: Icon(Icons.arrow_back),
          color: Color(0xff123456),
          onPressed: () {},
        ),
        title: Text(
          // Statut de navigation
          'My Orders',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        // Conteneur de la liste dees commandes
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          // Pour empiler les éléments
          children: [
            Container(
              // Pour le responsiveness afin que les boutons de filtre de commandes prennent tout l'espace restant
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // En attendant de fixer la logique
                  Expanded(
                    // Afin  de prendre tout l'espace défini du composant parent
                    child: Container(
                      // Sera remplacé par le component OrderStatusButton
                      height: 40,
                      decoration: BoxDecoration(
                        // Bordure du conteneur
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ClipRRect(
                        // Rectangle aux bords arrondis de 30
                        borderRadius: BorderRadius.circular(30),
                        child: ElevatedButton(
                          //Bouton de filtre pour l'affichage de la liste des commandes par leur statut
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.black,
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Delivered',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Expanded(
                    child: OrderStatusButton(
                        'Processing'), // Component - //Bouton de filtre pour l'affichage de la liste des commandes par leur statut
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Expanded(
                    child: OrderStatusButton(
                        'Cancelled'), // Component - //Bouton de filtre pour l'affichage de la liste des commandes par leur statut
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      // Liste scrollable des commandes
                      child: Column(
                        children: List.generate(
                            3,
                            (index) => Column(
                                  children: [
                                    OrderCard(),
                                    SizedBox(
                                      height: 20,
                                    )
                                  ],
                                )).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // Barre de navigation inférieur
        type: BottomNavigationBarType.fixed,
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
            //Page d'accueil
            icon: Icon(
              Icons.home,
              color: Colors.red,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            // PAge de commandes
            icon: Icon(
              Icons.favorite_outlined,
              color: Colors.grey,
            ),
            label: 'Gratitude',
          ),
          BottomNavigationBarItem(
            // PAge de panier
            icon: Icon(
              Icons.shopping_cart_rounded,
              color: Colors.grey,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            // Page de notifications
            icon: Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
            label: 'Reminders',
          ),
          BottomNavigationBarItem(
            // PAge d'édition de profil utilisateur
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
        onTap: (selectedIndex) {},
      ),
    );
  }
}
