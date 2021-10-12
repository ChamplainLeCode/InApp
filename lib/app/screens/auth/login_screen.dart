import 'package:flutter/material.dart';
import 'package:in_app/app/screens/auth/components/app_logo.dart';
import 'package:in_app/app/screens/auth/components/login_custom_form.dart';

import 'package:karee/annotations.dart';
import 'package:karee/widgets.dart';

import 'components/action_text.dart';
import 'components/socials_list_group.dart';

/// Generated Karee Screen
///
/// `LoginScreen` is set as Screen with name `login`
@Screen('login', isInitial: false)
class LoginScreen extends StatefulScreen {
  _LoginState createState() => new _LoginState();
}

class _LoginState extends ScreenState<LoginScreen> {
  @override
  Widget builder(BuildContext context) {
    return Scaffold(
      /// Palier à l'abscence de l'AppBar
      body: SafeArea(
        /// Rendre la page scrollable à la rotation de l'écran
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),

              /// Logo InApp Personnalisé
              AppLogo(),

              /// Action du formulaire
              ActionText('Login to your Account'),

              SizedBox(
                height: 10,
              ),

              /// Formulaire de login
              LoginCustomForm(),

              SizedBox(
                height: 50,
              ),

              /// Text incateur d'action
              Text(
                '- Or sign in with -',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 25,
              ),

              /// List des alternatives de connexion
              SocialsListGroup(),
              SizedBox(
                height: 70,
              ),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                    children: [
                      /// Route vers la page de création de compte
                      TextSpan(
                        text: 'Sign up',
                        style: TextStyle(
                          color: Color(0xff123456),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
