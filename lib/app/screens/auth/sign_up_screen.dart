import 'package:flutter/material.dart';
import 'package:in_app/app/screens/auth/components/action_text.dart';
import 'package:in_app/app/screens/auth/components/app_logo.dart';
import 'package:in_app/app/screens/auth/components/signup_custom_form.dart';
import 'package:in_app/app/screens/auth/components/socials_list_group.dart';

import 'package:karee/annotations.dart';
import 'package:karee/widgets.dart';

/// Generated Karee Screen
///
/// `SignUpScreen` is set as Screen with name `signup`
@Screen('signup', isInitial: false)
class SignUpScreen extends StatefulScreen {
  _SignUpState createState() => new _SignUpState();
}

class _SignUpState extends ScreenState<SignUpScreen> {
  @override
  Widget builder(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      /// Barre supérieure de navigation
      appBar: AppBar(
        /// Retour en arrière
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xff123456),
          onPressed: () {},
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),

      /// Rendre la page scrollable à la rotation
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// InApp logo with personnalisation
            AppLogo(),

            /// Action du formulaire
            ActionText('Create your Account'),

            SizedBox(
              height: 10,
            ),

            /// Formulaire de signUp
            SignUpCustomForm(),

            SizedBox(
              height: 50,
            ),

            /// Texte indicateur d'action
            Text(
              '- Or sign up with -',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 20,
            ),

            /// List des alternatives de connexion
            SocialsListGroup(),
          ],
        ),
      ),
    );
  }
}
