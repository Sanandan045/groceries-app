import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocrry/widgets/primary_btn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
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
              "Loging",
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
              "Enter your emails and password",
              style: GoogleFonts.lato(
                color: Color(0xFF7C7C7C),
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
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
                  hintText: "enter password",
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
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forget Password ?",
                      style: TextStyle(color: Colors.green),
                    ))),
            SizedBox(
              height: 30,
            ),
            PrimaryBtn(btnName: "Log In", bgColor: Colors.green, callback: (){}),
            SizedBox(
              height: 30,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Don’t have an account?  ',
                style: TextStyle(color: Color(0xFF181725)),
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
