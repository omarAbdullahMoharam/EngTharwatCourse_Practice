import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF2B475E),
        body: Column(children: [
          Center(
              heightFactor: 1.3,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                    color: Colors.green, shape: BoxShape.circle),
                child: const CircleAvatar(
                  radius: 130,
                  backgroundImage: AssetImage(
                      "asset/07dc9250-a59f-4a34-9576-d88f9cfadeb8.webp"),
                ),
              )),
          const Text(
            "Omar Abdullah",
            style: TextStyle(
                color: Colors.white,
                height: 0.75,
                fontSize: 40,
                fontFamily: 'Pacifico',
                fontStyle: FontStyle.normal),
          ),
          const SizedBox(height: 15),
          const Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
              color: Color(0xFF6C8090),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            color: Color(0xFF6C8090),
            thickness: 0.5,
            indent: 20,
            endIndent: 20,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              width: 370,
              height: 65,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    CupertinoIcons.phone_fill,
                    size: 30,
                    color: Color(0xFF2B475E),
                  ),
                  //  {**Hint👌**
                  // => We Can Use SizedBox To Format and style our design instead of
                  // using Spacer(Flex:{int Value}) and the code is smaller and easier
                  // // -------------
                  //    SizedBox(
                  //      width: 15,
                  //    ),}
                  //  }
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    '(+20)1064385332',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(
                    flex: 10,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // const Spacer(
          //   flex: 1,
          // ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              width: 370,
              height: 65,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              padding: const EdgeInsets.all(15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    CupertinoIcons.mail_solid,
                    size: 30,
                    color: Color(0xFF2B475E),
                  ),
                  // SizedBox(
                  //   width: 15,
                  // ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    'omarmoharam790@gmail.com',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(
                    flex: 2,
                  )
                ],
              ),
            ),
          ),

          /// const Spacer(
          //   flex: 25,
          // ),
          const SizedBox(
            height: 8,
          ),
          const Divider(
            color: Color(0xFF6C8090),
            indent: 20,
            endIndent: 20,
            thickness: 2,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Contact Me!',
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 22),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 70),
              SizedBox(
                width: 70,
                height: 90,
                child: Image.asset(
                  'asset/Icons/google.png',
                  width: 70.0,
                  height: 90.0,
                ),
              ),
              const SizedBox(width: 20),
              const SizedBox(
                width: 70,
                height: 90,
                child: Center(
                  child: Image(
                    image: AssetImage(
                      "asset/Icons/facebook.png",
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              const SizedBox(
                width: 70,
                height: 90,
                child: Center(
                  child: Image(
                    image: AssetImage(
                      "asset/Icons/twitter.png",
                    ),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
