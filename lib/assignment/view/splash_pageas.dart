import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_otp_ver/assignment/view/assignment.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer.periodic(Duration(seconds: 3), (timer) {
      if (mounted) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => AssignmentPage()),
            (route) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        'F I R E A P P X',
        style: TextStyle(
            color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 35),
      ),
    ));
  }
}
