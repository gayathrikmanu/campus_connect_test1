// ignore_for_file: prefer_const_constructors

import 'package:campus_connect_test1/theme/theme_data.dart';
import 'package:flutter/material.dart';

class RegisterUser extends StatelessWidget {
  const RegisterUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'lib/assets/shapes/topwave.png',
                height: 180,
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 48,
              ),
              Image.asset(
                'lib/assets/images/App_icon.png',
                height: 50,
              ),
              Image.asset(
                'lib/assets/images/Phileo Logo White 1.png',
                height: 100,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            margin: EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 244, 244, 246),
                borderRadius: BorderRadius.circular(45),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(30, 0, 0, 0),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(6, 10))
                ]),
            height: 450,
            width: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 48,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: const Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 7, 113, 135)),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black.withOpacity(0.3),
                      ),
                      hintText: 'Email or Username',
                      hintStyle:
                          TextStyle(color: Colors.black.withOpacity(0.3)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.5))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 7, 113, 135),
                              width: 2.0),
                          borderRadius: BorderRadius.circular(50))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black.withOpacity(0.3),
                      ),
                      hintText: 'Password',
                      hintStyle:
                          TextStyle(color: Colors.black.withOpacity(0.3)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.5))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 7, 113, 135),
                              width: 2.0),
                          borderRadius: BorderRadius.circular(50))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black.withOpacity(0.3),
                      ),
                      hintText: 'Confirm Password',
                      hintStyle:
                          TextStyle(color: Colors.black.withOpacity(0.3)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.5))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 7, 113, 135),
                              width: 2.0),
                          borderRadius: BorderRadius.circular(50))),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(AppColors.primaryBlue),
                          minimumSize: WidgetStatePropertyAll(Size(100, 50))),
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'forgot password?',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.primaryBlueDarker,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Already a user? Login',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'lib/assets/shapes/bottomwave.png',
                height: 210,
              ),
            ],
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 7, 113, 135),
    );
  }
}
