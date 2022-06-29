import 'package:flutter/material.dart';

class UserSettings extends StatelessWidget {
  const UserSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),

                //profile picture
                Container(
                  height: 90,
                  width: 100,
                  child: const Icon(Icons.person_outline, size: 60),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("@User21",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Fitness | Fashion"),
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                const Icon(
                  Icons.edit_outlined,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 57, 191, 222),
                    padding: const EdgeInsets.fromLTRB(90, 5, 90, 5)),
                child: const Text("View Full Profile")),
            Container(
              height: 600,
              width: double.infinity,
              color: const Color.fromARGB(255, 228, 220, 220),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.groups),
                        label: const Text("Groups"),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                          primary: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.contact_page_outlined),
                        label: const Text("Contacts"),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                          primary: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add_ic_call),
                        label: const Text("Calls"),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                          primary: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.event_note_sharp),
                        label: const Text("Events"),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                          primary: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.info_outline),
                        label: const Text("Info"),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                          primary: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.security_outlined),
                        label: const Text("Security"),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                          primary: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.help_outline),
                        label: const Text("Help"),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                          primary: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.privacy_tip_outlined),
                        label: const Text("Privacy"),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                          primary: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Sign Out"),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                          primary: Color.fromARGB(255, 232, 25, 25),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "   By Signing out, you would have to remember your password ",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        "   to log in back ",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
