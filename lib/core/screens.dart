import 'package:in_app/app/screens/pay/payment_alternatives_screen.dart';
import 'package:in_app/app/screens/auth/login_screen.dart';
import 'package:in_app/app/screens/auth/sign_up_screen.dart';
import 'package:in_app/app/screens/order/order_screen.dart';
import 'package:in_app/app/screens/order/order_detail_screen.dart';
import 'package:in_app/app/screens/product/product_detail_screen.dart';
import 'package:in_app/app/screens/splash/splash_screen.dart';


/// Generated buy Karee
///
///Do not modify

List<Map<Symbol, dynamic>> screens = [

	{#name: 'spalsh', #screen: () => SplashScreen()},
	{#name: 'productdetail', #screen: () => ProductDetailScreen(), #initial: true},
	{#name: 'orderdetail', #screen: () => OrderDetailScreen()},
	{#name: 'order', #screen: () => OrderScreen()},
	{#name: 'signup', #screen: () => SignUpScreen()},
	{#name: 'login', #screen: () => LoginScreen()},
	{#name: 'paymentalternatives', #screen: () => PaymentAlternativesScreen()},

];