// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          SizedBox(
            height: 24,
          ),
          Column(
            children: [
              Image.asset(
                'lib/assets/images/App_icon.png',
                height: 120,
              ),
              Image.asset('lib/assets/images/Phileo Logo White 1.png'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'lib/assets/shapes/bottomwave.png',
                height: 300,
              ),
            ],
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 7, 113, 135),
    );
  }
}
