import 'package:flutter/material.dart';
import 'package:in_app/app/screens/order/components/order_card.dart';
import 'package:in_app/app/screens/order/components/order_status_button.dart';

import 'package:karee/annotations.dart';
import 'package:karee/widgets.dart';
import 'package:karee/navigation.dart';

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
      /// Bqrre de Statut de navigation
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xff123456),

          /// Retour en arrière
          onPressed: () {},
        ),

        /// Statut de navigation
        title: Text(
          'My Orders',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),

      /// Liste des commandes
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                /// Boutons de filtre pour l'affichage de la liste des commandes par leur statut
                children: [
                  Expanded(
                    child: OrderStatusButton('Delivered', true),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Expanded(
                    child: OrderStatusButton('Processing', false),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Expanded(
                    child: OrderStatusButton('Cancelled', false),
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
                      /// Liste scrollable des commandes
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

      /// Barre de navigation inférieur
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
            /// Page d'accueil
            icon: IconButton(
              onPressed: () => KareeRouter.goto("/"),
              icon: Icon(
                Icons.home,
                color: Colors.red,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            /// Page de commandes
            icon: IconButton(
              onPressed: () => KareeRouter.goto("/productdetail"),
              icon: Icon(
                Icons.favorite_outlined,
                color: Colors.grey,
              ),
            ),
            label: 'Détails Produits',
          ),
          BottomNavigationBarItem(
            /// PAge de panier
            icon: IconButton(
              onPressed: () => KareeRouter.goto("/order"),
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.grey,
              ),
            ),
            label: 'Commandes',
          ),
          BottomNavigationBarItem(
            /// Page de notifications
            icon: IconButton(
              onPressed: () => KareeRouter.goto("/orderdetail"),
              icon: Icon(
                Icons.notifications,
                color: Colors.grey,
              ),
            ),
            label: 'Détails Commandes',
          ),
          BottomNavigationBarItem(
            /// Page d'édition de profil utilisateur
            icon: IconButton(
              onPressed: () => KareeRouter.goto("/paymentalternatives"),
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
            ),
            label: 'Paiement',
          ),
        ],
        onTap: (selectedIndex) {},
      ),
    );
  }
}
