import 'package:echio/initial_screens/verification.dart';
import 'package:echio/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'influencer.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Key Formkey = GlobalKey();

  Color get color => Colors.amber;
  @override
  Widget build(BuildContext context) {
    TextEditingController mobileNumber = TextEditingController();
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
                      controller: mobileNumber,
                      keyboardType: TextInputType.number,
                      decoration: ThemeHelper().textInputDecoration(
                          'Contact Number', 'eg:9810XXXXXX'),
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                    const SizedBox(
                      height: 10,
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VerifyNumber()),
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

Widget buildEditIcon(Color color) => buildCircle(
      color: Color.fromARGB(255, 183, 181, 181),
      all: 3,
      child: buildCircle(
        color: Colors.grey,
        all: 8,
        child: const Icon(
          Icons.edit,
          color: Colors.white,
          size: 18,
        ),
      ),
    );

Widget buildCircle({
  required Widget child,
  required double all,
  required Color color,
}) =>
    ClipOval(
      child: Container(
        padding: const EdgeInsets.all(3),
        color: Color.fromARGB(255, 77, 204, 230),
        child: child,
      ),
    );
