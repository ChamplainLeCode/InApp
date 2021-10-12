import 'package:flutter/material.dart';
import 'package:in_app/app/screens/auth/components/social_button.dart';
import 'package:karee/widgets.dart';

/// Component - Liste des alternatives de connexion formaté
///
class SocialsListGroup extends StatelessComponent {
  @override
  Widget builder(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(width: 10),

        /// Bouton d'alternative de connexion via google
        SocialButton('assets/images/google.svg'),

        /// Bouton d'alternative de connexion via facebook
        SocialButton('assets/images/facebook.svg'),

        /// Bouton d'alternative de connexion via twitter
        SocialButton('assets/images/twitter.svg'),

        SizedBox(width: 10),
      ],
    );
  }
}
