import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserSettings extends StatefulWidget {
  @override
  _UserSettingsState createState() => _UserSettingsState();
}

class _UserSettingsState extends State<UserSettings> {
  void showDialogBox(String lable) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: Text("Information"),
            content: Text(lable),
            actions: [
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.ads_click),
                  label: const Text("Yes")),
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.ads_click),
                  label: const Text("No"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            children: <ListTile>[
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text(
                  "Update Profile",
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  showDialogBox("Update Profile");
                },
              ),
              ListTile(
                leading: const Icon(Icons.key),
                title: const Text(
                  "Change Password",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                onTap: () {
                  showDialogBox("Change Password");
                },
              ),
              ListTile(
                leading: const Icon(Icons.accessibility),
                title: const Text(
                  "View Permissions",
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  showDialogBox("View Permissions");
                },
              ),
              ListTile(
                leading: const Icon(Icons.manage_accounts),
                title: const Text(
                  "Manage Settings",
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  showDialogBox("Manage Settings");
                },
              ),
            ],
          )),
    );
  }
}
