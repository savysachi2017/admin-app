import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main.dart';
import '../utils/colors.dart';
import 'auth/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 3200), () {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent,systemNavigationBarColor: Colors.transparent));
      // if(Api.auth != null){
      //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen())) ;
      // }else{
      //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen())) ;
      // }
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen())) ;
    });
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.theme['primaryColor'],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/logos/se_logo.png",
                  height:200,
                  width: 200,
                ),
              ),
              Center(
                child: Image.asset(
                  "assets/images/logos/se_name.png",
                  height: 100,
                  width: 250,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
