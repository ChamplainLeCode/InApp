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

  ///
  /// Méthode qui permet de valider le champ de l'adresse mail
  /// Cette méthode ajoute la fonction à la navigation
  String? emailValidation(String value) {
    const String _pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}';
    RegExp regExp = RegExp(_pattern);
    print('Verifier1');

    if (value.isEmpty) {
      return 'Email required';
    }
    if (!regExp.hasMatch(value)) {
      return 'Enter a correct email';
    }
    return null;
  }

  ///
  /// Méthode qui permet de valider le champ du mot de passe
  /// Cette méthode ajoute la fonction à la navigation
  String? passwordValidation(String value) {
    // const String _pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    print('Verifier2');
    const String _numberPattern = r'(?=.*?[0-9])';
    const String _capitalLetterPattern = r'(?=.*?[A-Z])';
    const String _smallLetterPattern = r'(?=.*?[a-z])';
    const String _specialCharacterPattern = r'(?=.*?[!@#\$&*~])';

    //RegExp regExp = new RegExp(_pattern);

    RegExp numberRegExp = new RegExp(_numberPattern);
    RegExp capitalRegExp = new RegExp(_capitalLetterPattern);
    RegExp smallRegExp = new RegExp(_smallLetterPattern);
    RegExp specialCharRegExp = new RegExp(_specialCharacterPattern);

    if (value.isEmpty) {
      return 'Password required';
    }
    if (!numberRegExp.hasMatch(value)) {
      return 'The password must constain numbers';
    }
    if (!capitalRegExp.hasMatch(value)) {
      return 'The password must contain Upper Case Letters';
    }
    if (!smallRegExp.hasMatch(value)) {
      return 'The password must contain lower case letters';
    }
    if (!specialCharRegExp.hasMatch(value)) {
      return 'Allowed special characters : !@#\$&*~';
    }
    if (value.length < 8) {
      return 'The password must be 8 characters at least or more';
    }
    return null;
  }

  ///
  /// Méthode qui permet de valider le champ de confirmation du mot de passe
  /// Cette méthode ajoute la fonction à la navigation
  String? confirmPasswordValidation(String _pass, String value) {
    print('Verifier3');
    if (value.isEmpty) {
      return 'Password confimation is required';
    }
    if (value != _pass) {
      return 'Password confirmation does not match';
    }
    return null;
  }
}
