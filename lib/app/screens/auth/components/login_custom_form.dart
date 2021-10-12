import 'package:flutter/material.dart';
import 'package:in_app/app/screens/auth/components/email_field.dart';
import 'package:in_app/app/screens/auth/components/password_field.dart';
import 'package:karee/widgets.dart';

class LoginCustomForm extends StatefulComponent {
  LoginCustomForm({Key? key}) : super(key: key);

  @override
  LoginCustomFormState createState() => LoginCustomFormState();
}

// Create a corresponding State class.
// This class holds data related to the form.
class LoginCustomFormState extends ComponentState<LoginCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();

  @override
  Widget builder(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        children: [
          /// Chamo de l'email
          EmailField(),

          /// Champ du mot de passe
          PasswordField(_pass),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 8.0,
              textStyle: const TextStyle(fontSize: 20),
              primary: Color(0xff123456),
              padding: EdgeInsets.symmetric(horizontal: 113, vertical: 10),
            ),
            onPressed: () {
              // Validate returns true if the form is valid, or false otherwise.
              if (_formKey.currentState!.validate()) {
                // If the form is valid, display a snackbar. In the real world,
                // you'd often call a server or save the information in a database.
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Processing Data')),
                );
              }
            },
            child: Text(
              "Sign up",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
