import 'package:flutter/material.dart';
import 'package:groceryapp/pages/home_page.dart';
import 'package:groceryapp/pages/mobauth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

import '../../constants/styles.dart';
import '../../widgets/circlecontainer.dart';
import '../farm_buy.dart';

class RegUsr extends StatelessWidget {
  const RegUsr({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.green,
            child: Stack(
              children: [
                const CircleContainer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 80),
                    Container(
                      margin: const EdgeInsets.only(top: 150),
                      child: const Center(
                        child: Text(
                          'Register',
                          style: AppTextStyles.authTitleText,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
                      child: Text(
                        'Enter your mail id below to login.',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.authDescText,
                      ),
                    ),
                    Container(
                      width: 400,
                      height: 50,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 8), // Adjusted vertical margin
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.8),
                          hintText: '                    example@gmail.com',
                          hintStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 8),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 400,
                      height: 50,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 8), // Adjusted vertical margin
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.8),
                          hintText: '                             password',
                          hintStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 14),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 400,
                      height: 50,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 8), // Adjusted vertical margin
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.8),
                          hintText: '                          Retype your password',
                          hintStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 14),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 400,
                      height: 50,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      child: ElevatedButton(
                        onPressed: () {
                          // Continue button action
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        style: AppTextStyles.elevatedButtonStyle,
                        child: const Text(
                          'SIGN UP',
                          style: AppTextStyles.authTextStyles,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: OutlinedButton(
                                onPressed: () {
                                  // Add your logic for the resend button here
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FarmBuy(),
                                    ),
                                  );
                                },
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(color: Colors.black),
                                ),
                                child: const Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                
                              ),
                            ),
                          ),
                         
                        ],
                      ),
                    ),
                    const SizedBox(height: 58),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
