import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserAdd extends StatelessWidget {
  const UserAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65, //appbar size adjustments

        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/lg.png",
                      height: 55,
                      width: 48,
                      alignment: Alignment.bottomLeft,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "New Post",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.clear, color: Colors.black),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //top buttons

            Row(
              children: [
                const SizedBox(width: 7),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Gallery",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                    backgroundColor: Color.fromARGB(255, 212, 211, 207),
                  ),
                ),
                const SizedBox(width: 12),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Camera",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                    backgroundColor: Color.fromARGB(255, 212, 211, 207),
                  ),
                ),
                const SizedBox(width: 12),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Folder",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                    backgroundColor: Color.fromARGB(255, 212, 211, 207),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            //grid-1

            Row(
              children: [
                const SizedBox(width: 10),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 232, 230, 230),
                ),
                const SizedBox(width: 18),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 233, 232, 232),
                ),
                const SizedBox(width: 18),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 230, 228, 228),
                ),
                const SizedBox(width: 5),
              ],
            ),

            //grid-2
            const SizedBox(height: 18),
            Row(
              children: [
                const SizedBox(width: 10),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 232, 230, 230),
                ),
                const SizedBox(width: 18),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 233, 232, 232),
                ),
                const SizedBox(width: 18),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 230, 228, 228),
                ),
                const SizedBox(width: 5),
              ],
            ),

            //grid-3
            const SizedBox(height: 18),
            Row(
              children: [
                const SizedBox(width: 10),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 232, 230, 230),
                ),
                const SizedBox(width: 18),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 233, 232, 232),
                ),
                const SizedBox(width: 18),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 230, 228, 228),
                ),
                const SizedBox(width: 5),
              ],
            ),

            //grid-4
            const SizedBox(height: 18),
            Row(
              children: [
                const SizedBox(width: 10),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 232, 230, 230),
                ),
                const SizedBox(width: 18),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 233, 232, 232),
                ),
                const SizedBox(width: 18),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 230, 228, 228),
                ),
                const SizedBox(width: 5),
              ],
            ),
            //grid-5
            const SizedBox(height: 18),
            Row(
              children: [
                const SizedBox(width: 10),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 232, 230, 230),
                ),
                const SizedBox(width: 18),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 233, 232, 232),
                ),
                const SizedBox(width: 18),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 230, 228, 228),
                ),
                const SizedBox(width: 5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
