import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Welcome back!",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      const Text(
                          "Start managing your finance faster and better",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(0XFF9BA0AB),
                              fontWeight: FontWeight.normal)),
                      const SizedBox(height: 35),
                      TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFFEAEEF5),
                              prefixIcon: const Icon(Icons.email_outlined),
                              hintText: "you@gmail.com",
                              hintStyle: const TextStyle(
                                color: Color(0XFF9BA0AB),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none))),
                      const SizedBox(height: 10),
                      TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFFEAEEF5),
                              prefixIcon: const Icon(Icons.lock_outline),
                              hintText: "at least 8 characters",
                              hintStyle:
                                  const TextStyle(color: Color(0XFF9BA0AB)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {},
                              child: const Text("Forgot password?"))),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            fixedSize: const Size(double.maxFinite, 55),
                          ),
                          child: const Text("Login"))
                    ]))));
  }
}
