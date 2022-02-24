import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/DrawerSideNav.dart';
import 'package:flutter_application_1/screen/Homepage.dart';
import 'package:flutter_application_1/screen/bottomNavBar.dart';
import 'package:flutter_application_1/screen/institutions.dart';
import 'package:flutter_application_1/screen/login/login.dart';
import 'package:flutter_application_1/screen/message.dart';
import 'package:flutter_application_1/screen/profile.dart';
import 'package:flutter_application_1/screen/reports.dart';
import 'package:flutter_application_1/screen/settings.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => Login(),
      "/home": (context) => HomePage(),
      "/settings": (context) => Settings(),
      "/report": (context) => Reports(),
      "/message": (context) => Message(),
      "/institutions": (context) => Institutions(),
      "/profile": (context) => Profile()
    },
  ));
}

// void main() {
//   runApp(MaterialApp(
//     title: 'ClipOval',
//     theme: ThemeData(
//       primarySwatch: Colors.blue,
//     ),
//     home: HomePage(),
//     debugShowCheckedModeBanner: false,
//   ));
// }


// void main() {
//   runApp(MaterialApp(
//     home: DefaultTabController(length: 4, child: BottomNavBar()),
//   ));
// }

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter Home Page'),
//         centerTitle: true,
//       ),
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           Container(
//             padding: const EdgeInsets.all(10.0),
//             color: Colors.pink,
//             child: const Text(
//               "Animation",
//               style: TextStyle(
//                 fontSize: 15,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.all(10.0),
//             color: Colors.pink,
//             child: const Text(
//               "Film Making",
//               style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white),
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.all(10.0),
//             color: Colors.pink,
//             child: const Text(
//               "Digital Marketing",
//               style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white),
//             ),
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () {
//           // Add your onPressed code here!
//         },
//         label: const Text('Approve'),
//         icon: const Icon(Icons.thumb_up),
//         backgroundColor: Colors.pink,
//       ),
//     ),
//   ));
// }
