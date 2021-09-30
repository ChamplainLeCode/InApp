import 'package:flutter/material.dart';
import 'package:in_app/app/screens/auth/components/app_logo.dart';
import 'package:in_app/app/screens/auth/components/social_button.dart';

import 'package:karee/annotations.dart';
import 'package:karee/widgets.dart';

import 'components/form_button.dart';
import 'components/form_text_field.dart';

/// Generated Karee Screen
///
/// `LoginScreen` is set as Screen with name ``
@Screen('login', isInitial: false)
class LoginScreen extends StatefulScreen {
  _LoginState createState() => new _LoginState();
}

class _LoginState extends ScreenState<LoginScreen> {
  @override
  Widget builder(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Palier à l'abscence de l'AppBAr
        child: SingleChildScrollView(
          // Rendre la page scrollable à la rotation de l'écran
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              AppLogo(), // Component - Logo InApp Personnalisé
              Container(
                //Indicateur d'action
                margin: EdgeInsets.fromLTRB(50, 45, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Login to your Account',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FormTextField('Email'), // Component - Champ de email
              FormTextField('Password'), // Component - Champ de mot de passe
              SizedBox(
                height: 10,
              ),
              FormButton(
                  'Sign up'), // Component - Bouton de validation du formulaire
              SizedBox(
                height: 50,
              ),
              Text(
                // Text incateur d'action
                '- Or sign in with -',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 10),
                  SocialButton(
                      'assets/images/google.svg'), // Component - Bouton d'alternative de connexion via google
                  SocialButton(
                      'assets/images/facebook.svg'), // Component - Bouton d'alternative de connexion via facebook
                  SocialButton(
                      'assets/images/twitter.svg'), // Component - Bouton d'alternative de connexion via twitter
                  SizedBox(width: 10),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    // Text incateur d'action
                    text: 'Don\'t have an account? ',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        // Route vers la page de création de compte
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
