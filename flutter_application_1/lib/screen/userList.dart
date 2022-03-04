import 'package:flutter/material.dart';

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.white;
    }

    return SizedBox(
        child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          sortAscending: false,
          sortColumnIndex: 1,
          showBottomBorder: true,
          headingRowColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            return Theme.of(context).colorScheme.background.withOpacity(0.18);
          }),
          dataRowColor:
              MaterialStateProperty.resolveWith((states) => getColor(states)),
          columns: <DataColumn>[
            DataColumn(label: Text("Id")),
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Email")),
            DataColumn(label: Text("Mobile")),
          ],
          rows: <DataRow>[
            DataRow(selected: true, cells: [
              DataCell(Text("1")),
              DataCell(Text("Ram Chaurasiya")),
              DataCell(Text("cram6138@gmail.com")),
              DataCell(Text("8400106559")),
            ]),
            DataRow(cells: [
              DataCell(Text("2")),
              DataCell(Text("Harsh Chaurasiya")),
              DataCell(Text("cram6138@gmail.com")),
              DataCell(Text("8400106559")),
            ]),
            DataRow(cells: [
              DataCell(Text("3")),
              DataCell(Text("Gudiya Chaurasiya")),
              DataCell(Text("cram6138@gmail.com")),
              DataCell(Text("9319824399")),
            ]),
            DataRow(cells: [
              DataCell(Text("4")),
              DataCell(Text("Harshitha Chaurasiya")),
              DataCell(Text("cram6138@gmail.com")),
              DataCell(Text("9319824399")),
            ]),
            DataRow(cells: [
              DataCell(Text("4")),
              DataCell(Text("Harshitha Chaurasiya")),
              DataCell(Text("cram6138@gmail.com")),
              DataCell(Text("9319824399")),
            ]),
            DataRow(cells: [
              DataCell(Text("4")),
              DataCell(Text("Harshitha Chaurasiya")),
              DataCell(Text("cram6138@gmail.com")),
              DataCell(Text("9319824399")),
            ]),
            DataRow(cells: [
              DataCell(Text("4")),
              DataCell(Text("Harshitha Chaurasiya")),
              DataCell(Text("cram6138@gmail.com")),
              DataCell(Text("9319824399")),
            ]),
            DataRow(cells: [
              DataCell(Text("4")),
              DataCell(Text("Harshitha Chaurasiya")),
              DataCell(Text("cram6138@gmail.com")),
              DataCell(Text("9319824399")),
            ]),
            DataRow(cells: [
              DataCell(Text("4")),
              DataCell(Text("Harshitha Chaurasiya")),
              DataCell(Text("cram6138@gmail.com")),
              DataCell(Text("9319824399")),
            ]),
            DataRow(cells: [
              DataCell(Text("4")),
              DataCell(Text("Harshitha Chaurasiya")),
              DataCell(Text("cram6138@gmail.com")),
              DataCell(Text("9319824399")),
            ]),
            DataRow(cells: [
              DataCell(Text("4")),
              DataCell(Text("Harshitha Chaurasiya")),
              DataCell(Text("cram6138@gmail.com")),
              DataCell(Text("9319824399")),
            ]),
            DataRow(cells: [
              DataCell(Text("4")),
              DataCell(Text("Harshitha Chaurasiya")),
              DataCell(Text("cram6138@gmail.com")),
              DataCell(Text("9319824399")),
            ]),
            DataRow(cells: [
              DataCell(Text("4")),
              DataCell(Text("Harshitha Chaurasiya")),
              DataCell(Text("cram6138@gmail.com")),
              DataCell(Text("9319824399")),
            ]),
          ],
        ),
      ),
    ));
  }
}
