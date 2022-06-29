import 'package:echio/initial_screens/influencer.dart';
import 'package:echio/initial_screens/signup.dart';
import 'package:echio/screens/homepage.dart';
import 'package:flutter/material.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
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
                const SizedBox(height: 100),
                ClipOval(
                  child: Image.asset(
                    "assets/lg.png",
                    height: 100,
                    width: 150,
                    alignment: Alignment.center,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Verify Email',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                  child: Text(
                    'a 6-digit verification code has been sent to your Email Id',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Container(
                        color: Color.fromARGB(255, 187, 186, 186),
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        color: Color.fromARGB(255, 187, 186, 186),
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        color: Color.fromARGB(255, 187, 186, 186),
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        color: Color.fromARGB(255, 187, 186, 186),
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        color: Color.fromARGB(255, 187, 186, 186),
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        color: Color.fromARGB(255, 187, 186, 186),
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp()),
                    );
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black, width: 2),
                    padding: const EdgeInsets.fromLTRB(50, 8, 50, 8),
                    primary: const Color.fromARGB(150, 255, 255, 255),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class VerifyNumber extends StatefulWidget {
  const VerifyNumber({Key? key}) : super(key: key);

  @override
  State<VerifyNumber> createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  Key Formkey = GlobalKey();

  Color get color => Colors.amber;

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
        Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            ClipOval(
              child: Image.asset(
                "assets/lg.png",
                height: 60,
                width: 70,
                alignment: Alignment.topLeft,
              ),
            ),
          ],
        ),
        SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              SafeArea(
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          width: 5, color: Color.fromARGB(255, 168, 159, 159)),
                      color: Color.fromARGB(255, 249, 242, 242),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 105, 104, 104),
                          blurRadius: 10,
                          offset: Offset(5, 5),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        const Icon(
                          Icons.person,
                          size: 70,
                          color: Color.fromARGB(255, 189, 188, 188),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            left: 40,
                            height: 30,
                            child: buildEditIcon(color)),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: Formkey,
                child: Column(
                  children: [
                    TextField(
                      decoration: ThemeHelper()
                          .textInputDecoration('Full Name', 'eg:Ravi Gupta'),
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      // controller: mobileNumber,
                      keyboardType: TextInputType.number,
                      decoration: ThemeHelper().textInputDecoration(
                          'Contact Number', 'eg:9810XXXXXX'),
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Verify Phone Number",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      "Enter 6-digit OTP sent to your phone Number",
                      style: TextStyle(fontSize: 9),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Container(
                            color: Color.fromARGB(255, 187, 186, 186),
                            height: 30,
                            width: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Container(
                            color: Color.fromARGB(255, 187, 186, 186),
                            height: 30,
                            width: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Container(
                            color: Color.fromARGB(255, 187, 186, 186),
                            height: 30,
                            width: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Container(
                            color: Color.fromARGB(255, 187, 186, 186),
                            height: 30,
                            width: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Container(
                            color: Color.fromARGB(255, 187, 186, 186),
                            height: 30,
                            width: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Container(
                            color: Color.fromARGB(255, 187, 186, 186),
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: ThemeHelper().textInputDecoration(
                          'Instagram User Name', 'eg:user123'),
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: ThemeHelper().textInputDecoration(
                          'Instagram Url', 'eg:instagram.com/user123'),
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: ThemeHelper()
                          .textInputDecoration('Followers', 'eg:10K'),
                      style: TextStyle(fontSize: 10, color: Colors.grey[600]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: ThemeHelper()
                          .textInputDecoration('Followings', 'eg:10K'),
                      style: TextStyle(fontSize: 10, color: Colors.grey[600]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: ThemeHelper().textInputDecoration(
                          'Youtube Account Link(if any)',
                          'eg:youtube.com/channel_name'),
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text("Congratulations!"),
                              content: const Text(
                                "You have successfully registered as an Influencer.",
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePage()),
                                    );
                                  },
                                  child: const Text("Next"),
                                ),
                              ],
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(120, 30),
                            primary: const Color.fromARGB(255, 29, 190, 211),
                            side: const BorderSide(
                              color: Colors.blueGrey,
                              width: 1.0,
                            ),
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                          child: Text("Register"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
