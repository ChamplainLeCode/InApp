import 'package:in_app/app/screens/auth/login_screen.dart';
import 'package:in_app/app/screens/auth/sign_up_screen.dart';
import 'package:karee/annotations.dart';
import 'package:karee/karee.dart';

/// Generated Karee Controller
///
///
/// `Authentication` is set as Controller
@Controller
class AuthenticationController {
  ///
  /// Méthode qui permet d'afficher l'écran de login
  /// Cette méthode ajoute l'écran à la navigation
  void showLoginScreen() {
    screen(LoginScreen(), RouteMode.PUSH);
  }

  ///
  /// Méthode qui permet d'afficher l'écran de sigup
  /// Cette méthode ajoute l'écran à la navigation
  void showSignUpScreen() {
    screen(SignUpScreen(), RouteMode.PUSH);
  }

  String index() {
    return 'AuthenticationController is ready to use';
  }
}
