// ignore: unused_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  //You can uncomment any call runApp method to show the  difference🫡🤍
  runApp(const BusinessCardApp());
  // runApp(const UsingListile());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF2B475E),
        body: Column(
          children: [
            Center(
                heightFactor: 1.3,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Colors.green, shape: BoxShape.circle),
                  child: const CircleAvatar(
                    radius: 130,
                    backgroundImage: AssetImage(
                        "assets/07dc9250-a59f-4a34-9576-d88f9cfadeb8.webp"),
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
                fontSize: 20,
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
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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

            //{**Hint👌**
            //تقدر تستخدم هنا ال sizedBox()
            //بس انا عوضت عنها ب اني عملت Margin
            //حوالين ال  container
            // }

            //  {**Hint👌**
            // => margin بتعمل space
            //حوالين الويدجت ذات نفسها الى هي موجوده فيها ك اتريبيوت
            //
            //ال padding بتعمل على ال
            //child بتاعها بس }

            //  {**Hint👌**
            // => الفرق بين ال Padding
            //ك ويدجت و ك اتريبيوت
            //=>لو استخدمته ك اتريبيوت ف انت كده بتعمل
            //padding على ال child
            //بتاع البادينج ويدجت
            //=>  لو استخدمته  ك ويدجت ف انت كده بتعمل
            //padding  على الى الويدجت الى جواه
            //}

            //=>متنساش انك ممكن تعمل مسافات ب ال spacer(flex:)
            //ودي بتكون بشكل نسبى لباقى الاسكرين
            //=>بتاخد الى باقى م الاسكرين كله ليها يعتب
            //ر ف بتحجمها بواحده زيها بعد الويدجت الى انت عاوزها
            // const Spacer(
            //   flex: 1,
            // ),

            Container(
              width: 370,
              height: 65,
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              padding: const EdgeInsets.all(15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    CupertinoIcons.mail,
                    size: 30,
                    color: Color(0xFF2B475E),
                  ),
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
                fontSize: 22,
              ),
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
                    'assets/icons/google.png',
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
                        "assets/icons/facebook.png",
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
                        "assets/icons/twitter.png",
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
