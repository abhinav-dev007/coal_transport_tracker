// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:coal_transport_tracker/pages/login_forgotpass/forgot_pass.dart';
import 'package:coal_transport_tracker/components/loginpage_textfield.dart';
import 'package:coal_transport_tracker/components/signin_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lottie/lottie.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    void signUserIn() async {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
      );
    }
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    Lottie.asset('lib/assets/animations/login_lottie.json',
                      height: 250,
                      width: 250,
                      reverse: true,
                    ),
                const Text(
                  "Welcome User!",
                  style: TextStyle(
                      color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Please Log In",
                  style: TextStyle(
                      color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                LoginPageTextField(
                  controller: emailController,
                  hintText: ('Enter Email'),
                  obscureText: false,
                ),
                LoginPageTextField(
                  controller: passwordController,
                  hintText: ('Enter Password'),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context){
                            return const ForgotPassword();
                            },
                          ),
                          );
                        },
                        child: const Text("Forgot Password?",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SignInButton(
                  onTap: signUserIn,
                ),
            ],
            ),
          ),
        ),
    ),
    );
  }
}
