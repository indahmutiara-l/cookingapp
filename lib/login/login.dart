import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percobaan1/home/home.dart';
import 'package:percobaan1/login/register.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/loginpage.png'),
                  fit: BoxFit.cover)),
          child: Center(
            child: Container(
                margin: const EdgeInsets.only(
                  left: 50,
                  right: 50,
                  top: 150,
                  bottom: 150,
                ),
                padding: const EdgeInsets.only(left: 50, right: 50),
                width: 331,
                height: 475,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(196, 196, 196, 70),
                  borderRadius: BorderRadius.all(Radius.circular(22.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Your email",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        padding: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border: Border.all(color: Colors.black)),
                        child: const TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            icon: Icon(Icons.person, color: Colors.black),
                            hintText: 'email@gmail.com',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(217, 217, 217, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        )),
                    Text(
                      "Password",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        padding: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border: Border.all(color: Colors.black)),
                        // ignore: prefer_const_constructors
                        child: TextField(
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              hintText: '********',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(217, 217, 217, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              suffixIcon: Icon(
                                Icons.visibility,
                                color: Colors.black,
                              )),
                        )),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromRGBO(121, 121, 121, 1),
                          border: Border.all(color: Colors.black)),
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()));
                        },
                        child: Text(
                          "LOGIN",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("No Account ?",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            )),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Register()));
                            },
                            child: Text(
                              " Create One !",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            )),
                      ],
                    )
                  ],
                )),
          )),
    );
  }
}
