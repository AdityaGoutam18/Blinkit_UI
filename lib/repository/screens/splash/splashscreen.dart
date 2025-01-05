import 'dart:async';

import 'package:blinkit_series/domain/constants/appcolors.dart';
import 'package:blinkit_series/repository/screens/login/loginscreen.dart';
import 'package:blinkit_series/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: AppColors.scaffoldbackgroud,
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
         UiHelper.CustomImage(img: "image 1 (1).png"),
       ],),
     ),
   );
  }
}