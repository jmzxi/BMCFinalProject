import 'package:ecommerce_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

// 2. This is the State class
class _LoginScreenState extends State<LoginScreen> {

  // 3. Create a GlobalKey for the Form
  final _formKey = GlobalKey<FormState>();

  // 4. Create TextEditingControllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // 5. Clean up controllers when the widget is removed
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

   @override
  Widget build(BuildContext context) {
    // 1. A Scaffold provides the basic screen structure
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      // 2. SingleChildScrollView prevents the keyboard from 
      //    causing a "pixel overflow" error
      body: SingleChildScrollView(
        child: Padding(
          // 3. Add padding around the form
          padding: const EdgeInsets.all(16.0),
          // 4. The Form widget acts as a container for our fields
          child: Form(
            key: _formKey, // 5. Assign our key to the Form
            // 6. A Column arranges its children vertically
            child: Column(
              // 7. Center the contents of the column
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // The Form Fields will go here
              ],
            ),
          ),
        ),
      ),
    );
  }

}
