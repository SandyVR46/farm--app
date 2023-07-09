import 'package:flutter/material.dart';
import 'package:groceryapp/pages/pinauth/pincodefields.dart';
import '../../constants/styles.dart';
import '../../widgets/circlecontainer.dart';
import '../admin_home_page.dart';



class PinAuth extends StatelessWidget {
  const PinAuth({Key? key});

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
                    margin: const EdgeInsets.only(top: 150),
                    child: const Center(
                      child: Text(
                        'Create PIN ',
                        style: AppTextStyles.authTitleText,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
                    child: Text(
                      'Enter a unique four-digit PIN to protect your account.',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.authDescText,
                    ),
                  ),
                  const SizedBox(height: 16),
                  PinCodeField(
                    onChanged: (value) {
                      // Handle OTP value changes
                    },
                    onCompleted: (value) {
                      // Handle OTP input completion
                    },
                  ),
                  AuthButton(
                    onPressed: () {
                      // Perform OTP verification logic here
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AdminHomePage()),
                    );
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const ArchivePage()),
                    // );
                    },
                    text: 'CONTINUE',
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
