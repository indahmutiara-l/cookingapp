import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percobaan1/login/login.dart';

class Register extends StatefulWidget {
  const Register({Key key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                      "Username",
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
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Username',
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
                      "Email",
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
                        // ignore: prefer_const_constructors
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              hintText: 'email@gmail.com',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(217, 217, 217, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none),
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
                              hintText: '********',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(217, 217, 217, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              suffixIcon:
                                  Icon(Icons.visibility, color: Colors.black)),
                        )),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromRGBO(121, 121, 121, 1),
                          border: Border.all(color: Colors.black)),
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
                        },
                        child: Text(
                          "CREATE",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          )),
    );
  }
}
