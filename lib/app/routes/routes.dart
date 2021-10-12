import 'package:karee/navigation.dart' show Route;

/*
 * By Karee
 * 
 */
void registeredRoute() {
  Route.on('/', 'HomeController@index');

  /// Screen routes
  Route.on('/login', 'AuthenticationController@showLoginScreen');
  Route.on('/signup', 'AuthenticationController@showSignupScreen');
  Route.on('/paymentalternatives',
      'ProductionController@showPaymentAlternativesScreen');
  Route.on('/order', 'ProductionController@showOrderScreen');
  Route.on('/orderdetail', 'ProductionController@showOrderDetailScreen');
  Route.on('/productdetail', 'ProductionController@showProductDetailScreen');

  /// Authentication Methods
  Route.on(
      '/validation/password', 'AuthenticationController@passwordValidation');
  Route.on('/validation/email', 'AuthenticationController@emailValidation');
  Route.on('/validation/confirmPassword',
      'AuthenticationController@confirmPasswordValidation');

  // Route.on('/dashboard', 'DashBoardController@home');
  // Route.on('/dashboard/{menu}', 'DashBoardController@menuScreen');
}
