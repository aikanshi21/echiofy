import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(
              "assets/lg.png",
              height: 55,
              width: 50,
              alignment: Alignment.bottomLeft,
            ),
            const SizedBox(width: 10),
            const Text(
              "Chats",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.amber[50],
          ),
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 300,
                    height: 30,
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
                            hintStyle: TextStyle(
                                fontSize: 15, color: Colors.grey[600]),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.co_present_rounded),
                    label: const Text("@user1"),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(5, 10, 232, 10),
                      primary: Colors.black,
                      backgroundColor: Color.fromARGB(255, 222, 224, 224),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.co_present_rounded),
                    label: const Text("@user2"),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(5, 10, 232, 10),
                      primary: Colors.black,
                      backgroundColor: Color.fromARGB(255, 222, 224, 224),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.co_present_rounded),
                    label: const Text("@user3"),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(5, 10, 232, 10),
                      primary: Colors.black,
                      backgroundColor: Color.fromARGB(255, 222, 224, 224),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.co_present_rounded),
                    label: const Text("@user4"),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(5, 10, 232, 10),
                      primary: Colors.black,
                      backgroundColor: Color.fromARGB(255, 222, 224, 224),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.co_present_rounded),
                    label: const Text("@user5"),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(5, 10, 232, 10),
                      primary: Colors.black,
                      backgroundColor: Color.fromARGB(255, 222, 224, 224),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.co_present_rounded),
                    label: const Text("@user5"),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(5, 10, 232, 10),
                      primary: Colors.black,
                      backgroundColor: Color.fromARGB(255, 222, 224, 224),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.co_present_rounded),
                    label: const Text("@user6"),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(5, 10, 232, 10),
                      primary: Colors.black,
                      backgroundColor: Color.fromARGB(255, 227, 230, 230),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
