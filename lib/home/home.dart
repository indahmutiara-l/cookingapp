import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            "aaaaaaaaa",
            style: GoogleFonts.poppins(
                fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, bottom: 20),
          child: Text(
            "for cooking",
            style: GoogleFonts.poppins(
                fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        Container(
          width: 380,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
          padding: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Colors.black)),
          child: TextField(
            decoration: InputDecoration(
              icon: const Icon(
                Icons.search,
                color: Color.fromARGB(100, 193, 193, 193),
              ),
              hintText: "Search recipes",
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: const Color.fromARGB(100, 193, 193, 193)),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        )
      ],
    ));
  }
}
