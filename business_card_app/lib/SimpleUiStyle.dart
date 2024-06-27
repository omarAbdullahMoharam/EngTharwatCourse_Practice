// ignore: file_names
import 'package:flutter/material.dart';

class UsingListile extends StatelessWidget {
  const UsingListile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF2B475E),
        body: Column(
          children: [
            Center(
              heightFactor: 1.35,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                    color: Colors.green, shape: BoxShape.circle),
                child: const CircleAvatar(
                  radius: 130,
                  backgroundImage: AssetImage(
                      "assets/07dc9250-a59f-4a34-9576-d88f9cfadeb8.webp"),
                ),
              ),
            ),
            const Text(
              'Omar Abdullah',
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF6C8090),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 158, 211, 255),
              indent: 20,
              endIndent: 20,
              thickness: 1,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: const ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Color(0xFF2B475E),
                  size: 35,
                ),
                title: Text(
                  '(+20)1064385332',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: const ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Color(0xFF2B475E),
                  size: 32,
                ),
                title: Text('omarmoharam790@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            const SizedBox(height: 4),
            const Divider(
              color: Color.fromARGB(255, 158, 211, 255),
              indent: 20,
              endIndent: 20,
              thickness: 1,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Contact Me!',
              style: TextStyle(
                color: Color.fromARGB(255, 61, 168, 255),
                decoration: TextDecoration.underline,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 70,
                ),
                const Spacer(
                  flex: 3,
                ),
                SizedBox(
                  width: 70,
                  height: 90,
                  child: Image.asset(
                    'assets/icons/google.png',
                    width: 70,
                    height: 90,
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                SizedBox(
                  width: 70,
                  height: 90,
                  child: Image.asset(
                    'assets/icons/facebook.png',
                    width: 70,
                    height: 90,
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                SizedBox(
                  width: 70,
                  height: 90,
                  child: Image.asset(
                    'assets/icons/twitter.png',
                    width: 70,
                    height: 90,
                  ),
                ),
                const Spacer(
                  flex: 10,
                )
              ],
            ),
            const Spacer(
              flex: 6,
            ),
          ],
        ),
      ),
    );
  }
}
