import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditUser extends StatefulWidget {
  @override
  _EditUserState createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
  final _formKey = GlobalKey<FormState>();
  String value = "Delhi";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Wrap(
        children: <Widget>[
          // FloatingActionButton.extended(
          //   onPressed: () {},
          //   label: const Text("Add New User"),
          //   icon: const Icon(Icons.add_box),
          //   backgroundColor: Colors.pink,
          //   extendedPadding: const EdgeInsets.all(20.0),
          // ),
          // FloatingActionButton.extended(
          //   onPressed: () {},
          //   label: const Text("Edit User"),
          //   icon: const Icon(Icons.edit),
          //   backgroundColor: Colors.pink,
          //   extendedPadding: const EdgeInsets.all(20.0),
          // ),

          Form(
              key: _formKey,
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: [
                  const Text(
                    "Add/Edit User Form",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 236, 59, 15)),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "First Name"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'First name should not be empty';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Last Name"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Last name should not be empty';
                      }
                      return null;
                    },
                  ),
                  // Container(
                  //   child: DropdownButton(
                  //     value: value,
                  //     items: [
                  //       DropdownMenuItem(
                  //         child: Text("Telangana"),
                  //       )
                  //     ],
                  //     onChanged: (state) {

                  //     },
                  //     hint: const Text("Select Item"),
                  //   ),
                  // ),

                  TextFormField(
                    decoration: const InputDecoration(labelText: "Mobile"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Mobile should not be empty';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Email"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email should not be empty';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Password"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password should not be empty';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  ),
                ]),
              )),
        ],
      ),
    ));
  }
}
