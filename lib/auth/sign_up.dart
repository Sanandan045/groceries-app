import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

    bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/grrenC.jpg"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Sign Up",
              style: GoogleFonts.lato(
                color: Color(0xFF181725),
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Enter your credentials to continue",
              style: GoogleFonts.lato(
                color: Color(0xFF7C7C7C),
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 15,),
             Text(
              "UserName",
              style: GoogleFonts.lato(
                color: Color(0xFF7C7C7C),
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "John Dev",
                  focusedBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(
                          color: Colors.green.shade100, width: 1.5))),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Email",
              style: GoogleFonts.lato(
                color: Color(0xFF7C7C7C),
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "eg : john@gmail.com",
                  focusedBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(
                          color: Colors.green.shade100, width: 1.5))),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Password",
              style: GoogleFonts.lato(
                color: Color(0xFF7C7C7C),
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
            TextField(
              obscureText: _isHidden,
              decoration: InputDecoration(
                  hintText: ".....",
                  focusedBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(
                          color: Colors.green.shade100, width: 1.5)),
                  suffix: InkWell(
                    onTap: () {
                      setState(() {
                        _isHidden = !_isHidden;
                      });
                    },
                    child: Icon(
                      _isHidden ? Icons.visibility : Icons.visibility_off,
                    ),
                  )),
            ),
            SizedBox(height: 15,),
            Text(
             " By continuing you agree to our Terms of Service\nand Privacy Policy.",
              style: GoogleFonts.lato(color: Colors.grey),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: Size(327, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  elevation: 0,
                ),
                child: Text(
                  "Sign Up ",
                  style: GoogleFonts.lato(
                      color: Color(0xFFFFF9FF),
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                )),
            SizedBox(
              height: 30,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Already have an account?  ',
                style: GoogleFonts.lato(color: Color(0xFF181725)),
                children: const <TextSpan>[
                  TextSpan(
                      text: ' Signup ',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.normal)),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}