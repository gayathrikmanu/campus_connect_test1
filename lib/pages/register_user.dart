// ignore_for_file: prefer_const_constructors

import 'package:campus_connect_test1/pages/login.dart';
import 'package:campus_connect_test1/theme/theme_data.dart';
import 'package:campus_connect_test1/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class RegisterUser extends StatelessWidget {
  const RegisterUser({super.key});
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    TextEditingController usernController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'lib/assets/shapes/topwave.png',
                height: screenHeight * 0.15,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: screenHeight * 0.05),
              Image.asset(
                'lib/assets/images/App_icon.png',
                height: screenHeight * 0.05,
              ),
              Image.asset(
                'lib/assets/images/Phileo Logo White 1.png',
                height: screenHeight * 0.1,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            margin: EdgeInsets.symmetric(
                horizontal: 40, vertical: screenWidth * 0.05),
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
            height: screenHeight * 0.48,
            width: screenWidth * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenHeight * 0.01),
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontSize: screenHeight * 0.035,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 7, 113, 135)),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                customTextField(
                    hintText: 'Email or Username',
                    prefixIcon: Icon(Icons.person),
                    fieldController: usernController),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                customTextField(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    fieldController: passwordController),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                customTextField(
                    hintText: 'Confirm Password',
                    prefixIcon: Icon(Icons.lock),
                    fieldController: confirmPasswordController),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(AppColors.primaryBlue),
                          minimumSize: WidgetStatePropertyAll(
                              Size(screenWidth * 0.3, screenHeight * 0.055))),
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: screenWidth * 0.038),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Text(
              'Already a user? Login',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.035),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'lib/assets/shapes/bottomwave.png',
                height: screenHeight * 0.2,
              ),
            ],
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 7, 113, 135),
    );
  }
}
