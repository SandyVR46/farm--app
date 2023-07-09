import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../constants/styles.dart';
import '../../widgets/circlecontainer.dart';
import '../pinauth/pinauth.dart';

class OtpAuth extends StatelessWidget {
  const OtpAuth({super.key});

  // This widget is the root of your application.
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
                  Container(
                    margin: const EdgeInsets.only(top: 200),
                    child: const Center(
                      child: Text(
                        'OTP Authentication',
                        style: AppTextStyles.authTitleText,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
                    child: Text(
                      'An authentication code has been sent to your phone number',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.authDescText,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 4,
                      textStyle: TextStyle(color: Colors.white),
                      obscureText: false,
                      cursorColor: Colors.white,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(8),
                        fieldHeight: 60,
                        fieldWidth: 60,
                        activeColor: Colors.white,
                        inactiveColor: Colors.white,
                        selectedColor: Colors.white,
                      ),
                      onChanged: (value) {
                        // Handle OTP value changes
                      },
                      onCompleted: (value) {
                        // Handle OTP input completion
                      },
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 50,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 30),
                    child: ElevatedButton(
                      style: AppTextStyles.elevatedButtonStyle,
                      onPressed: () {
                        // Perform OTP verification logic here
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PinAuth()),
                        );
                      },
                      child: const Text('CONTINUE',
                          style: AppTextStyles.authTextStyles),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Didn't receive OTP?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: OutlinedButton(
                              onPressed: () {
                                // Add your logic for the resend button here
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.black),
                              ),
                              child: const Text(
                                "Resend",
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
