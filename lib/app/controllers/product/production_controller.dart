import 'package:in_app/app/screens/order/order_detail_screen.dart';
import 'package:in_app/app/screens/order/order_screen.dart';
import 'package:in_app/app/screens/pay/payment_alternatives_screen.dart';
import 'package:in_app/app/screens/product/product_detail_screen.dart';
import 'package:in_app/app/screens/pay/payment_alternatives_screen.dart';
import 'package:karee/annotations.dart';
import 'package:karee/karee.dart';

/// Generated Karee Controller
///
///
/// `Production` is set as Controller
@Controller
class ProductionController {
  ///
  /// Méthode qui permet d'afficher l'écran de commandes
  /// Cette méthode ajoute l'écran à la navigation
  void showOrderScreen() {
    screen(OrderScreen(), RouteMode.PUSH);
  }

  ///
  /// Méthode qui permet d'afficher l'écran de détail d'une commande
  /// Cette méthode ajoute l'écran à la navigation
  void showOrderDetailScreen() {
    screen(OrderDetailScreen(), RouteMode.PUSH);
  }

  ///
  /// Méthode qui permet d'afficher l'écran de détail d'un produit
  /// Cette méthode ajoute l'écran à la navigation
  void showProductDetailScreen() {
    screen(ProductDetailScreen(), RouteMode.PUSH);
  }

  ///
  /// Méthode qui permet d'afficher l'écran des alternatives de paiements
  /// Cette méthode ajoute l'écran à la navigation
  void showPaymentAlternativesScreen() {
    screen(PaymentAlternativesScreen(), RouteMode.PUSH);
  }

  String index() {
    return 'ProductionController is ready to use';
  }
}
