
import 'package:flutter/material.dart';


import '../constants/styles.dart';
import '../widgets/circlecontainer.dart';
import 'otpauth/otpauth.dart';



class MobAuth extends StatelessWidget {
  const MobAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.green,
          child: Stack(
            children: [
              const CircleContainer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 28),
                  Container(
                    margin: const EdgeInsets.only(top: 80),
                    child: const Center(
                      child: Text(
                        'Get Started',
                        style:  AppTextStyles.authTitleText,
                      ),
                    ),
                  ),
                  
                  const Padding(
                    padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
                    child: Text(
                      'Enter your phone number below to create an account.',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.authDescText
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        hintText: '       +91              9999999999',
                        hintStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 14),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 50,
                    
                    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    child: ElevatedButton(
                      onPressed: () {
                        // Continue button action
                        Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const OtpAuth()),
                              );
                      },
                      style: AppTextStyles.elevatedButtonStyle,
                      child: const Text('CONTINUE',
                      
                      style: AppTextStyles.authTextStyles,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
