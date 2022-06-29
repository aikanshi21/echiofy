import 'package:echio/initial_screens/Brand.dart';
import 'package:echio/initial_screens/influencer.dart';
import 'package:flutter/material.dart';

class Enter extends StatefulWidget {
  const Enter({Key? key}) : super(key: key);

  @override
  State<Enter> createState() => _EnterState();
}

class _EnterState extends State<Enter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // width: double.infinity,
        // height: double.infinity,
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                //     colorFilter: ColorFilter.mode(
                //       Colors.black.withOpacity(0.2),BlendMode.dstATop),
                image: AssetImage("assets/bg1.png"),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 150,
                ),
                ClipOval(
                  child: Image.asset(
                    "assets/lg.png",
                    height: 110,
                    width: 110,
                    alignment: Alignment.center,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    'Are you a ??',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 43, 54, 70)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Influencer()),
                    );
                  },
                  child: Text('Influencer'),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                      primary: const Color.fromARGB(255, 29, 190, 211),
                      side: const BorderSide(
                        color: Colors.blueGrey,
                        width: 1.0,
                      ),
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Brand()),
                    );
                  },
                  child: Text('Brand'),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                      primary: const Color.fromARGB(255, 29, 190, 211),
                      side: const BorderSide(
                        color: Colors.blueGrey,
                        width: 1.0,
                      ),
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
