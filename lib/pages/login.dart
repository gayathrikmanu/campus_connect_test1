// ignore_for_file: prefer_const_constructors

import 'package:campus_connect_test1/pages/register_user.dart';
import 'package:campus_connect_test1/theme/theme_data.dart';
import 'package:campus_connect_test1/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
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
              SizedBox(
                width: screenWidth * 0.1,
              ),
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
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.075),
            margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
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
            height: screenHeight * 0.42,
            width: screenHeight * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenWidth * 0.13,
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenHeight * 0.01),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: screenHeight * 0.032,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 7, 113, 135)),
                  ),
                ),
                SizedBox(
                  height: screenWidth * 0.02,
                ),
                customTextField(
                  hintText: 'Email or Username',
                  prefixIcon: Icon(Icons.person),
                  fieldController: usernameController,
                ),
                SizedBox(
                  height: screenWidth * 0.05,
                ),
                customTextField(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  fieldController: passwordController,
                ),
                SizedBox(
                  height: screenWidth * 0.05,
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
                              Size(screenWidth * 0.25, screenWidth * 0.1))),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: screenWidth * 0.038),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenWidth * 0.05,
                ),
                Center(
                  child: Text(
                    'forgot password?',
                    style: TextStyle(
                      fontSize: screenWidth * 0.03,
                      color: AppColors.primaryBlueDarker,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterUser()));
            },
            child: Text(
              'New User? Sign Up',
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
