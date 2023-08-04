import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

import '../map/gmap.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> emailKey = GlobalKey<FormState>();
  final GlobalKey<FormState> passwordKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            width: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: emailKey,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon:
                          const Icon(Icons.email_outlined, color: Colors.black),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      hintText: "Email"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email required";
                    }
                    if (!EmailValidator.validate(emailController.value.text)) {
                      return "Invalid Email";
                    } else {
                      return null;
                    }
                  },
                  controller: emailController,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: passwordKey,
                child: TextFormField(
                  obscureText: _isVisible ? false : true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    hintText: "Password",
                    suffixIcon: IconButton(
                      onPressed: () => updateStatus(),
                      icon: Icon(
                          _isVisible ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),

                  validator: (e) {
                    if (passwordController.value.text.isEmpty) {
                      return "Enter Password";
                    } else if (passwordController.value.text.length < 8) {
                      return "8 characters required";
                    } else {
                      return null;
                    }
                  },
                  // controller: emailController,
                ),
              ),
            ),
          ),
          ElevatedButton(
              child: const Text("Login", style: TextStyle(color: Colors.white)),
              onPressed: () {
                if (emailKey.currentState!.validate() &
                    passwordKey.currentState!.validate()) {}
              }),
          ElevatedButton(
              child: const Text("Create a account",
                  style: TextStyle(color: Colors.white)),
              onPressed: () {}),
          ElevatedButton(
              child: const Text("Google Map",
                  style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Map(),
                    ));
              }),
        ]),
      ),
    );
  }

  void updateStatus() {
    setState(() {
      if (_isVisible) {
        _isVisible = false;
      } else {
        _isVisible = true;
      }
    });
  }
}
// class PgPropertySearching extends StatefulWidget {
//   final List<String> propertyFilter;
//   final double radius;
//
//   const PgPropertySearching({super.key, required this.propertyFilter, required this.radius});
//
//   @override
//   State<PgPropertySearching> createState() => _PgPropertySearchingState();
// }
//
// class _PgPropertySearchingState extends State<PgPropertySearching>
//     with SingleTickerProviderStateMixin {
//   late final AnimationController _controller;
//
//   bool loaded = true;
//
//   int currentPage = 0;
//
//   @override
//   void initState() {
//     _controller = AnimationController(vsync: this);
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     if (_controller.isCompleted) {
//       _controller.dispose();
//     }
//     super.dispose();
//   }
//   return
//   Centre(child:  LottieAnimate(assetName: "assets/lottie.json"));
