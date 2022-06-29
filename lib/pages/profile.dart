import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  List list = ["post1", "post2", "post3", "post4", "post5"];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 40,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Icon(Icons.menu, color: Colors.black),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                //profile picture
                Container(
                  height: 90,
                  width: 100,
                  child: Icon(Icons.person_outline, size: 60),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 236, 227, 228),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),

                //Number of posts, followers,followings
                Column(
                  children: const [
                    Text("111"),
                    Text(
                      "Posts",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: const [
                    Text("2.4K"),
                    Text(
                      "Followers",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: const [
                    Text("88K"),
                    Text(
                      "Followings",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("@User21",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold)),
                    Text("Fitness|Fashion"),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 30,
              width: 345,
              color: Colors.grey[300],
              child: const Text(
                "Posts",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const SizedBox(width: 8),
                Container(
                  height: 110,
                  width: 110,
                  color: Color.fromARGB(255, 232, 230, 230),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 110,
                  width: 110,
                  color: Color.fromARGB(255, 233, 232, 232),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 110,
                  width: 110,
                  color: Color.fromARGB(255, 230, 228, 228),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const SizedBox(width: 8),
                Container(
                  height: 110,
                  width: 110,
                  color: Color.fromARGB(255, 232, 230, 230),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 110,
                  width: 110,
                  color: Color.fromARGB(255, 233, 232, 232),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 110,
                  width: 110,
                  color: Color.fromARGB(255, 230, 228, 228),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const SizedBox(width: 8),
                Container(
                  height: 110,
                  width: 110,
                  color: Color.fromARGB(255, 232, 230, 230),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 110,
                  width: 110,
                  color: Color.fromARGB(255, 233, 232, 232),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 110,
                  width: 110,
                  color: Color.fromARGB(255, 230, 228, 228),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const SizedBox(width: 8),
                Container(
                  height: 110,
                  width: 110,
                  color: Color.fromARGB(255, 232, 230, 230),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 110,
                  width: 110,
                  color: Color.fromARGB(255, 233, 232, 232),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 110,
                  width: 110,
                  color: Color.fromARGB(255, 230, 228, 228),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const SizedBox(width: 8),
                Container(
                  height: 110,
                  width: 110,
                  color: Color.fromARGB(255, 232, 230, 230),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 110,
                  width: 110,
                  color: Color.fromARGB(255, 233, 232, 232),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 110,
                  width: 110,
                  color: Color.fromARGB(255, 230, 228, 228),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
