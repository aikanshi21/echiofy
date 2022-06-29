import 'package:flutter/material.dart';
import 'influencer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late double opacity;
  Key FormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
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
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                        child: Column(
                          children: [
                            const Text(
                              "Welcome Back!",
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
                                        .textInputDecoration(
                                            'Password', 'Enter the Password'),
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey[600]),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(10),
                                    alignment: Alignment.topRight,
                                    child: const Text(
                                      "Forgot Password? Help",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 226, 27, 27),
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginPage()), //this has to redirect to the home page
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
                                        child: Text("Log In"),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    child: const Text(
                                      "Or use any Social Log In ",
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
