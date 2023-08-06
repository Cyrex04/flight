import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';
import 'signIn.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final confirmedPassword = TextEditingController();
  bool isRegistering = false;

  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color(0xFFFAC9B8),
          title: Center(
            child: Text(
              message,
              style: TextStyle(color: Colors.black),
            ),
          ),
        );
      },
    );
  }

  Future<void> signup() async {
    if (_password.text.trim() == confirmedPassword.text.trim()) {
      setState(() {
        isRegistering = true;
      });
      if (isRegistering == true) {
        try {
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: _email.text.trim(),
            password: _password.text.trim(),
          );
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        } on FirebaseAuthException catch (e) {
          // Navigator.pop(context);
          showErrorMessage(e.code);
        }

        setState(() {
          isRegistering = false;
        });
      }
    } else {
      showErrorMessage("The passwords do not match");
    }
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    confirmedPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 280,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/564x/36/e8/b3/36e8b3b1819b8c94121e1a26820e0b7d.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
            Positioned(
                top: 230,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 530,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Create Account",
                          style: GoogleFonts.bitter(
                            color: Color.fromARGB(255, 7, 87, 133),
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 28),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 214, 235, 246),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Username",
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 214, 235, 246),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: TextField(
                                controller: _email,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Email",
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 214, 235, 246),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: TextField(
                                controller: _password,
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 214, 235, 246),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: TextField(
                                controller: confirmedPassword,
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Confirm Password",
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: signup,
                              child: Text("Create",
                                  style: GoogleFonts.bitter(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    vertical: 14, horizontal: 50),
                                backgroundColor:
                                    Color.fromARGB(255, 7, 109, 177),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "You're Member?",
                                  style: GoogleFonts.ubuntu(
                                    color: Color.fromARGB(255, 7, 87, 133),
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 4),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignIN()));
                                  },
                                  child: Text(
                                    "Sign In",
                                    style: GoogleFonts.ubuntu(
                                      color: Color.fromARGB(255, 74, 188, 211),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 40),
                      ]),
                ))
          ],
        ),
      ),
    );
  }
}
