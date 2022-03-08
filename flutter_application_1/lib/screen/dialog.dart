import 'package:flutter/material.dart';

void showLogoutDialogBox(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert"),
          content: const Text("Do you want to logout?"),
          actions: [
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.popAndPushNamed(context, "/");
                },
                icon: const Icon(Icons.ads_click),
                label: const Text("Yes")),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.ads_click),
                label: const Text("No")),
          ],
        );
      });
}
