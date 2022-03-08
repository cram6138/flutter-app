import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/editUser.dart';
import 'package:flutter_application_1/screen/userList.dart';
import 'package:flutter_application_1/screen/userSettings.dart';

class ProfileMenu extends StatefulWidget {
  @override
  _ProfileMenuState createState() => _ProfileMenuState();
}

class _ProfileMenuState extends State<ProfileMenu>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  var _context;

  final List<Tab> myTabs = <Tab>[
    const Tab(icon: Icon(Icons.create_rounded), text: "Edit User"),
    const Tab(
      icon: Icon(Icons.view_list),
      text: "Users",
    ),
    const Tab(
      icon: Icon(Icons.settings),
      text: "Settings",
    ),
  ];

  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      switch (_tabController.index) {
        case 0:
          const Center(
            child: Text(
              "Here A form page should display to add a new user",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.yellow),
            ),
          );
          break;
        case 1:
          const Center(
            child: Text(
              "Here List of users Should display",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.yellow),
            ),
          );
          break;
        case 2:
          const Center(
            child: Text(
              "Here Users Settings Should display",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.yellow),
            ),
          );
          break;
      }
    }
  }

  // @override
  // void dispose() {
  //   _tabController.dispose();
  //   super.dispose();
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Profile"),
        bottom: TabBar(
          // controller: _tabController,
          tabs: myTabs,
        ),
        backgroundColor: const Color.fromARGB(255, 15, 68, 112),
      ),
      body: TabBarView(children: <Widget>[
        Center(
          child: EditUser(),
        ),
        UserList(),
        UserSettings(),
      ]),
    );
  }
}


// body: Builder(
//         builder: (context) {
//           _context = context;
//           return TabBarView(
//             controller: _tabController,
//             children: myTabs.map((Tab tab) {
//               final String label = "Users";
//               return Center(
//                 child: Text(
//                   'This is the $label tab',
//                   style: const TextStyle(fontSize: 36),
//                 ),
//               );
//             }).toList(),
//           );
//         },
//       ),