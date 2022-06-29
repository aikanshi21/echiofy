import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserTrending extends StatelessWidget {
  const UserTrending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60, //appbar size adjustments
        elevation: 2,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/lg.png",
                  height: 55,
                  width: 48,
                  alignment: Alignment.bottomLeft,
                ),
                const SizedBox(width: 20),
                Container(
                  width: 230,
                  height: 25,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 222, 224, 224),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(7),
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 20,
                          ),
                          suffixIcon: IconButton(
                            iconSize: 18,
                            padding: EdgeInsets.all(1),
                            icon: Icon(Icons.clear),
                            alignment: Alignment.centerRight,
                            onPressed: () {
                              // Navigator.pop(context);
                              /* Clear the search field */
                            },
                          ),
                          hintText: 'Search',
                          hintStyle:
                              TextStyle(fontSize: 15, color: Colors.grey[600]),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            color: Color.fromARGB(255, 242, 236, 227),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TextButton(
                          style: TextButton.styleFrom(
                            primary: Color.fromARGB(255, 189, 109, 109),
                          ),
                          onPressed: (() {}),
                          child: const Text(
                            "Entertainment",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                      TextButton(
                          onPressed: (() {}),
                          child: const Text(
                            "Fashion",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                      TextButton(
                          onPressed: (() {}),
                          child: const Text(
                            "Business",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                      TextButton(
                          onPressed: (() {}),
                          child: const Text(
                            "Gaming",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                      TextButton(
                          onPressed: (() {}),
                          child: const Text(
                            "Fitness",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                      TextButton(
                          onPressed: (() {}),
                          child: const Text(
                            "etc",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "     Trending posts",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(width: 30),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "     Trending Influencers",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(width: 30),
                      Container(
                        height: 120,
                        width: 120,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 120,
                        width: 120,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 120,
                        width: 120,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 120,
                        width: 120,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 120,
                        width: 120,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 120,
                        width: 120,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "     Based on your views",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(width: 30),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
