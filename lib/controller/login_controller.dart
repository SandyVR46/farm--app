import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryapp/pages/home_page.dart';
// import other necessary imports

class LoginController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> loginWithEmail() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text,
      );

      // Handle successful login, e.g., navigate to home page
      Get.off(HomePage());
    } catch (error) {
      // Handle login error, e.g., display error message
      print(error.toString());
    }
  }

  // Other login methods (Google sign-in, etc.)
}

