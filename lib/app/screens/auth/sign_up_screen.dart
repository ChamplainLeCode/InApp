import 'package:flutter/material.dart';
import 'package:in_app/app/screens/auth/components/app_logo.dart';

import 'package:karee/navigation.dart';
import 'package:karee/widgets.dart';

import 'components/form_button.dart';
import 'components/form_text_field.dart';
import 'components/social_button.dart';

/// Generated Karee Screen
///
/// `SignUpScreen` is set as Screen with name ``
// @Screen('signup', isInitial: false)
class SignUpScreen extends StatefulScreen {
  _SignUpState createState() => new _SignUpState();
}

class _SignUpState extends ScreenState<SignUpScreen> {
  @override
  Widget builder(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // Barre supérieure de navigation
        leading: IconButton(
          // Retour en arrière
          icon: Icon(Icons.arrow_back),
          color: Color(0xff123456),
          onPressed: () => KareeRouter.goBack(),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(40, 0, 40, 30),
        // Rendre la page scrollable à la rotation
        child: Column(
          // Empilation des élements
          children: [
            AppLogo(), // InApp logo with personnalisation
            Container(
              margin: EdgeInsets.fromLTRB(10, 45, 0, 0),
              alignment: Alignment.topLeft,
              child: Text(
                // Texte indicateur d'action
                'Create your Account',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FormTextField('Email'), // Component - Champ de email
            FormTextField('Password'), // Component - Champ de mot de passe
            FormTextField(
                'Confirm Password'), // Component - Champ de verification de mot de passe
            SizedBox(
              height: 15,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: FormButton(
                  text: 'Sign up',
                  onTap: () => KareeRouter.goto('/'),
                )), // Component - Bouton de validation du formulaire
            SizedBox(
              height: 50,
            ),
            Text(
              // Texte indicateur d'action
              '- Or sign up with -',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 20,
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
          ],
        ),
      ),
    );
  }
}
