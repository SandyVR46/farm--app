import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../pages/home_page.dart';
import '../utils/api_endpoints.dart';


 class RegisterationController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> registerWithEmail() async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text,
      );

      // Handle successful registration, e.g., navigate to home page
      Get.off(HomePage());
    } catch (error) {
      // Handle registration error, e.g., display error message
      print(error.toString());
    }
  }

  // Other registration methods (Google sign-up, etc.)
}
