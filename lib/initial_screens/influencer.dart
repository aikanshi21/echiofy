import 'package:echio/initial_screens/login_page.dart';
import 'package:echio/initial_screens/signup.dart';
import 'package:echio/initial_screens/verification.dart';

import 'package:flutter/material.dart';

class Influencer extends StatefulWidget {
  const Influencer({Key? key}) : super(key: key);

  @override
  State createState() => _InfluencerState();
}

class _InfluencerState extends State {
  Key FormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    TextEditingController emailAddress = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/bg1.png"),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(),
                const SizedBox(height: 50),
                ClipOval(
                  child: Image.asset(
                    "assets/lg.png",
                    height: 100,
                    width: 150,
                    alignment: Alignment.center,
                  ),
                ),
                SafeArea(
                    child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                        margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                        child: Column(
                          children: [
                            const Text(
                              "Welcome!",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const SizedBox(height: 20),
                            Form(
                              key: FormKey,
                              child: Column(
                                children: [
                                  TextField(
                                    controller: emailAddress,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: ThemeHelper()
                                        .textInputDecoration(
                                            'Email', 'Enter Your Email'),
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey[600]),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                    obscureText: true,
                                    decoration: ThemeHelper()
                                        .textInputDecoration('Create Password',
                                            'Create Your Own Password'),
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey[600]),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const VerifyEmail()),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                          minimumSize: const Size(120, 30),
                                          primary: const Color.fromARGB(
                                              255, 29, 190, 211),
                                          side: const BorderSide(
                                            color: Colors.blueGrey,
                                            width: 1.0,
                                          ),
                                          elevation: 10,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5))),
                                      child: const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(90, 10, 90, 10),
                                        child: Text("Sign Up"),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(10),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      "Already a member?",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 0,
                                  ),
                                  Container(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginPage()),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                          minimumSize: const Size(120, 30),
                                          primary: const Color.fromARGB(
                                              255, 29, 190, 211),
                                          side: const BorderSide(
                                            color: Colors.blueGrey,
                                            width: 1.0,
                                          ),
                                          elevation: 10,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5))),
                                      child: const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(95, 10, 95, 10),
                                        child: Text("Log In"),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    child: const Text(
                                      "Or use any Social Sign Up ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ThemeHelper {
  InputDecoration textInputDecoration(
      [String labelText = "", String hintText = " "]) {
    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      fillColor: Color.fromARGB(255, 223, 222, 222),
      filled: true,
      contentPadding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide:
              const BorderSide(color: Color.fromARGB(255, 168, 165, 165))),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide:
              const BorderSide(color: Color.fromARGB(255, 193, 193, 193))),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(color: Colors.red, width: 2.0)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(color: Colors.red, width: 2.0)),
    );
  }

  /* BoxDecoration buttonBoxDecoration(BuildContext context,
      [String Color1 = '', String Color2 = '']) {
    Color c1 = const Color.fromARGB(255, 133, 227, 234);
    Color c2 = const Color.fromARGB(255, 17, 53, 57);

    return BoxDecoration(
      boxShadow: [
        BoxShadow(color: Colors.black26, offset: Offset(0, 5), blurRadius: 5),
      ],
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.0, 1.0],
        colors: [c1, c2],
      ),
      color: Colors.purple,
      borderRadius: BorderRadius.circular(30.0),
    );
  }*/
}
