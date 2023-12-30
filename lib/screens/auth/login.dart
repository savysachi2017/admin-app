import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:se_admin_app/utils/colors.dart';

import '../../main.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    mq  = MediaQuery.of(context).size ;
    return Scaffold(
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: SizedBox(
            height: mq.height,
            child: Stack(
              children: [
                SizedBox(
                  height: mq.height,
                  child: Image.asset(
                    'assets/images/logos/login_bg.jpg',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Expanded(
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 7,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: SizedBox(
                              width: mq.width * .9,
                              child: Column(
                                children: [
                                  Image(image: AssetImage("assets/images/logos/se_logo.png"),height: 150,width: 150,),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: mq.width * .1,
                                    ),
                                    child: Text(
                                      'Admin Panel',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.theme['primaryColor'],
                                      ),
                                    ),
                                  ),
                                  component(
                                    Icons.email_outlined,
                                    'Email...',
                                    false,
                                    true,
                                  ),
                                  SizedBox(height: mq.height*0.02,),
                                  component(
                                    Icons.lock_outline,
                                    'Password...',
                                    true,
                                    false,
                                  ),
                                  SizedBox(height: mq.width * .1),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () {
                                      HapticFeedback.lightImpact();
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        bottom: mq.width * .1,
                                      ),
                                      height: mq.width / 8,
                                      width: mq.width / 1.25,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: AppColors.theme['secondaryColor'],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        'Log In',
                                        style: TextStyle(
                                          color: AppColors.theme['primaryColor'],
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget component(
      IconData icon, String hintText, bool isPassword, bool isEmail) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width / 8,
      width: size.width / 1.25,
      alignment: Alignment.center,
      padding: EdgeInsets.only(right: size.width / 30),
      decoration: BoxDecoration(
        color: AppColors.theme['primaryColor'],
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        style: TextStyle(
          color: AppColors.theme['secondaryColor'],
        ),
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: AppColors.theme['secondaryColor'],
          ),
          border: InputBorder.none,
          hintMaxLines: 1,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color:AppColors.theme['secondaryColor'],
          ),
        ),
      ),
    );
  }
}



class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}
