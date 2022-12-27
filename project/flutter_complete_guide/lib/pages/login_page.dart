import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
        child: Column(
      children: [
        Image.asset("assets/images/login_image.png",fit: BoxFit.cover),
        Text("Welcome",style: TextStyle(
          fontSize: 22,
          fontFamily: GoogleFonts.lato().fontFamily,
          fontWeight: FontWeight.bold
        ),
        ),
        SizedBox(
          height: 20.0,
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter user name",
          ),
        )
      ],
    ));
  }
}
