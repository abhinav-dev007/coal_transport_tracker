import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:coal_transport_tracker/components/loginpage_textfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    //  @override
    //  void dispose() {
    //    emailController.dispose();
    //    super.dispose();
    // }
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Lottie.asset(
              'lib/assets/animations/forgortpassword_lottie.json',
              height: 250,
              width: 250,
              reverse: true,
            ),
            const Text(
              "Please enter the Email you have provided during your registration and we will send you a password reset link",
              textAlign: TextAlign.center,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: LoginPageTextField(
                  controller: emailController,
                  hintText: ('Enter Email'),
                  obscureText: false,
                )),
            const SizedBox(
              height: 20.0,
            ),
            MaterialButton(
              onPressed: () {},
              child: Container(
                padding: const EdgeInsets.all(25),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Center(
                  child: Text(
                    "Reset Password",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
