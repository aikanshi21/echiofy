import 'package:echio/initial_screens/influencer.dart';
import 'package:echio/widgets/chat.dart';
import 'package:echio/widgets/userposts.dart';
import 'package:flutter/material.dart';

class UserHome extends StatelessWidget {
  UserHome({Key? key}) : super(key: key);

  final List people = [
    'User1',
    'User2',
    'User3',
    'User4',
    'User5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60, //appbar size adjustments
        elevation: 10,
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
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Chat()),
                    );
                  },
                  icon: const Icon(
                    Icons.chat_outlined,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
              ],
            ),
            /*   Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(150, 0, 10, 2),
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ],
            ),
            */
          ],
        ),
      ),
      body: Column(
        children: [
          //POSTS

          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: ((context, index) {
                return UserPosts(name: people[index]);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
