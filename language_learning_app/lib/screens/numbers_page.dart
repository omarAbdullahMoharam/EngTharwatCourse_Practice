import 'package:flutter/material.dart';
import 'package:language_learning_app/core/custom_number_component.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Numbers',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: const Column(
        children: [
          CustomNumberComponent(
            'assets/images/numbers/one.png',
            jabanies: 'ichi',
            english: 'One',
          ),

          //       Row(
//           children: [
//             Container(
//               width: 100,
//               height: 100,
//               color: const Color(0xFFFFF3DF),
//               child: Image.asset('assets/images/numbers/one.png'),
//             ),
//             Container(
//               padding: const EdgeInsets.only(left: 8),
//               child: const Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'ichi',
//                     style: TextStyle(color: Colors.white, fontSize: 22),
//                   ),
//                   Text(
//                     'One',
//                     style: TextStyle(color: Colors.white, fontSize: 22),
//                   ),
//                 ],
//               ),
//             ),
//             const Spacer(
//               flex: 1,
//             ),
//             const Icon(
//               Icons.play_arrow,
//               color: Colors.white,
//               size: 32,
//             )
//           ],
//         ),
//       ),
//       ),
//     );
//   }
// }

          CustomNumberComponent(
            'assets/images/numbers/two.png',
            jabanies: 'Ni',
            english: 'Two',
          ),

          //       Row(
//           children: [
//             Container(
//               width: 100,
//               height: 100,
//               color: const Color(0xFFFFF3DF),
//               child: Image.asset('assets/images/numbers/two.png'),
//             ),
//             Container(
//               padding: const EdgeInsets.only(left: 8),
//               child: const Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'Ni',
//                     style: TextStyle(color: Colors.white, fontSize: 22),
//                   ),
//                   Text(
//                     'Two',
//                     style: TextStyle(color: Colors.white, fontSize: 22),
//                   ),
//                 ],
//               ),
//             ),
//             const Spacer(
//               flex: 1,
//             ),
//             const Icon(
//               Icons.play_arrow,
//               color: Colors.white,
//               size: 32,
//             )
//           ],
//         ),
//       ),
//       ),
//     );
//   }
// }

          CustomNumberComponent(
            'assets/images/numbers/three.png',
            jabanies: 'San',
            english: 'Three',
          ),

          //       Row(
//           children: [
//             Container(
//               width: 100,
//               height: 100,
//               color: const Color(0xFFFFF3DF),
//               child: Image.asset('assets/images/numbers/three.png'),
//             ),
//             Container(
//               padding: const EdgeInsets.only(left: 8),
//               child: const Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'San',
//                     style: TextStyle(color: Colors.white, fontSize: 22),
//                   ),
//                   Text(
//                     'Three',
//                     style: TextStyle(color: Colors.white, fontSize: 22),
//                   ),
//                 ],
//               ),
//             ),
//             const Spacer(
//               flex: 1,
//             ),
//             const Icon(
//               Icons.play_arrow,
//               color: Colors.white,
//               size: 32,
//             )
//           ],
//         ),
//       ),
//       ),
//     );
//   }
// }

          CustomNumberComponent(
            'assets/images/numbers/four.png',
            jabanies: 'Shi',
            english: 'Four',
          ),

          //       Row(
//           children: [
//             Container(
//               width: 100,
//               height: 100,
//               color: const Color(0xFFFFF3DF),
//               child: Image.asset('assets/images/numbers/four.png'),
//             ),
//             Container(
//               padding: const EdgeInsets.only(left: 8),
//               child: const Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'Shi',
//                     style: TextStyle(color: Colors.white, fontSize: 22),
//                   ),
//                   Text(
//                     'Four',
//                     style: TextStyle(color: Colors.white, fontSize: 22),
//                   ),
//                 ],
//               ),
//             ),
//             const Spacer(
//               flex: 1,
//             ),
//             const Icon(
//               Icons.play_arrow,
//               color: Colors.white,
//               size: 32,
//             )
//           ],
//         ),
//       ),
//       ),
//     );
//   }
// }

          CustomNumberComponent(
            'assets/images/numbers/five.png',
            jabanies: 'Go',
            english: 'Five',
          ),

          //       Row(
//           children: [
//             Container(
//               width: 100,
//               height: 100,
//               color: const Color(0xFFFFF3DF),
//               child: Image.asset('assets/images/numbers/five.png'),
//             ),
//             Container(
//               padding: const EdgeInsets.only(left: 8),
//               child: const Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'Go',
//                     style: TextStyle(color: Colors.white, fontSize: 22),
//                   ),
//                   Text(
//                     'Five',
//                     style: TextStyle(color: Colors.white, fontSize: 22),
//                   ),
//                 ],
//               ),
//             ),
//             const Spacer(
//               flex: 1,
//             ),
//             const Icon(
//               Icons.play_arrow,
//               color: Colors.white,
//               size: 32,
//             )
//           ],
//         ),
//       ),
//       ),
//     );
//   }
// }

          CustomNumberComponent(
            'assets/images/numbers/six.png',
            jabanies: 'Roku',
            english: 'Six',
          ),

          //       Row(
//           children: [
//             Container(
//               width: 100,
//               height: 100,
//               color: const Color(0xFFFFF3DF),
//               child: Image.asset('assets/images/numbers/six.png'),
//             ),
//             Container(
//               padding: const EdgeInsets.only(left: 8),
//               child: const Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'Roku',
//                     style: TextStyle(color: Colors.white, fontSize: 22),
//                   ),
//                   Text(
//                     'Six',
//                     style: TextStyle(color: Colors.white, fontSize: 22),
//                   ),
//                 ],
//               ),
//             ),
//             const Spacer(
//               flex: 1,
//             ),
//             const Icon(
//               Icons.play_arrow,
//               color: Colors.white,
//               size: 32,
//             )
//           ],
//         ),
//       ),
//       ),
//     );
//   }
// }

          CustomNumberComponent(
            'assets/images/numbers/seven.png',
            jabanies: 'Sebun',
            english: 'Seven',
          ),

          //       Row(
//           children: [
//             Container(
//               width: 100,
//               height: 100,
//               color: const Color(0xFFFFF3DF),
//               child: Image.asset( 'assets/images/numbers/seven.png'),
//             ),
//             Container(
//               padding: const EdgeInsets.only(left: 8),
//               child: const Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'Sebun',
//                     style: TextStyle(color: Colors.white, fontSize: 22),
//                   ),
//                   Text(
//                     'Seven',
//                     style: TextStyle(color: Colors.white, fontSize: 22),
//                   ),
//                 ],
//               ),
//             ),
//             const Spacer(
//               flex: 1,
//             ),
//             const Icon(
//               Icons.play_arrow,
//               color: Colors.white,
//               size: 32,
//             )
//           ],
//         ),
//       ),
//       ),
//     );
//   }
// }

          CustomNumberComponent(
            'assets/images/numbers/eight.png',
            jabanies: 'hachi',
            english: 'Eight',
          ),

          //       Row(
//           children: [
//             Container(
//               width: 100,
//               height: 100,
//               color: const Color(0xFFFFF3DF),
//               child: Image.asset('assets/images/numbers/eight.png'),
//             ),
//             Container(
//               padding: const EdgeInsets.only(left: 8),
//               child: const Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'Eight',
//                     style: TextStyle(color: Colors.white, fontSize: 22),
//                   ),
//                   Text(
//                     'Eight',
//                     style: TextStyle(color: Colors.white, fontSize: 22),
//                   ),
//                 ],
//               ),
//             ),
//             const Spacer(
//               flex: 1,
//             ),
//             const Icon(
//               Icons.play_arrow,
//               color: Colors.white,
//               size: 32,
//             )
//           ],
//         ),
//       ),
//       ),
//     );
//   }
// }
        ],
      ),
    );
  }
}
