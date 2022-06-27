import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percobaan1/login/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/splashscreen.png'),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Let's",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 56.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Cooking",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 56.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Find the best food recipes",
                style: GoogleFonts.poppins(
                  color: const Color.fromRGBO(241, 241, 241, 100),
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: ((context) => const Login())),
      );
    });
  }
}
