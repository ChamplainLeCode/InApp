import 'package:karee/navigation.dart' show Route;

/*
 * By Karee
 * 
 */
void registeredRoute() {
  Route.on('/', 'HomeController@index');
  Route.on('/login', 'AuthenticationController@showLoginScreen');
  Route.on('/signup', 'AuthenticationController@showSignUpScreen');
  Route.on('/paymentalternatives',
      'ProductionController@showPaymentAlternativesScreen');
  Route.on('/order', 'ProductionController@showOrderScreen');
  Route.on('/orderdetail', 'ProductionController@showOrderDetailScreen');
  Route.on('/productdetail', 'ProductionController@showProductDetailScreen');

  // Route.on('/dashboard', 'DashBoardController@home');
  // Route.on('/dashboard/{menu}', 'DashBoardController@menuScreen');
}
