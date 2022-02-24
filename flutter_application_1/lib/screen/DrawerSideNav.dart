import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

late PageController _pageController;

class DrawerSideNav extends StatefulWidget {
  @override
  _DrawerSideNavState createState() => _DrawerSideNavState();
}

class _DrawerSideNavState extends State<DrawerSideNav> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped() {
    setState(() {
      //_selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text("Techno Solution"),
            Expanded(
                child: IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "/");
              },
              icon: const Icon(Icons.logout),
            ))
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 15, 68, 112),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            const DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 15, 68, 112)),
              child: Center(
                child: Text(
                  'Cotegories',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text("Message"),
              onTap: () => {Navigator.popAndPushNamed(context, "/message")},
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text("Profile"),
              onTap: () => {
                //Navigator.of(context).pop();
                Navigator.popAndPushNamed(context, "/profile")
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () => {Navigator.popAndPushNamed(context, "/settings")},
            ),
            ListTile(
              leading: const Icon(Icons.report),
              title: const Text("Report"),
              onTap: () => {Navigator.popAndPushNamed(context, "/report")},
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text("Institutions"),
              onTap: () =>
                  {Navigator.popAndPushNamed(context, "/institutions")},
            ),
            ListTile(
              leading: const Icon(Icons.file_copy_outlined),
              title: const Text("Courses"),
              onTap: () => {Navigator.of(context).pop()},
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.red[200],
                elevation: 10,
                child: Column(
                  children: [
                    const ListTile(
                      leading: Icon(
                        Icons.play_circle,
                        size: 60,
                      ),
                      title: Text('Flutter Tutorial',
                          style: TextStyle(fontSize: 30.0)),
                      subtitle: Text('Flutter Playlist for begginer.',
                          style: TextStyle(fontSize: 18.0)),
                    ),
                    ButtonBar(
                      children: [
                        ElevatedButton(
                            onPressed: () {}, child: const Text("Play")),
                        ElevatedButton(
                            onPressed: () {}, child: const Text("Pause")),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.red[200],
                elevation: 10,
                child: Column(
                  children: [
                    const ListTile(
                      leading: Icon(
                        Icons.play_circle,
                        size: 60,
                      ),
                      title: Text('React Tutorial',
                          style: TextStyle(fontSize: 30.0)),
                      subtitle: Text(
                          'React and redux tutorial for begginer (Basic + Advance).',
                          style: TextStyle(fontSize: 18.0)),
                    ),
                    ButtonBar(
                      children: [
                        ElevatedButton(
                            onPressed: () {}, child: const Text("Play")),
                        ElevatedButton(
                            onPressed: () {}, child: const Text("Pause")),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.red[200],
                elevation: 10,
                child: Column(
                  children: [
                    const ListTile(
                      leading: Icon(
                        Icons.play_circle,
                        size: 60,
                      ),
                      title: Text('Angular Tutorial',
                          style: TextStyle(fontSize: 30.0)),
                      subtitle: Text('Angular A-Z tutorial',
                          style: TextStyle(fontSize: 18.0)),
                    ),
                    ButtonBar(
                      children: [
                        ElevatedButton(
                            onPressed: () {}, child: const Text("Play")),
                        ElevatedButton(
                            onPressed: () {}, child: const Text("Pause")),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.red[200],
                elevation: 10,
                child: Column(
                  children: [
                    const ListTile(
                      leading: Icon(
                        Icons.play_circle,
                        size: 60,
                      ),
                      title: Text('Golang Tutorial',
                          style: TextStyle(fontSize: 30.0)),
                      subtitle: Text('Golang Basic tutorial for begginer.',
                          style: TextStyle(fontSize: 18.0)),
                    ),
                    ButtonBar(
                      children: [
                        ElevatedButton(
                            onPressed: () {}, child: const Text("Play")),
                        ElevatedButton(
                            onPressed: () {}, child: const Text("Pause")),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.red[200],
                elevation: 10,
                child: Column(
                  children: [
                    const ListTile(
                      leading: Icon(
                        Icons.play_circle,
                        size: 60,
                      ),
                      title: Text('Java Tutorial',
                          style: TextStyle(fontSize: 30.0)),
                      subtitle: Text(
                          'Complete java package. This includes Core java, JDBC, Servlet, JSP,',
                          style: TextStyle(fontSize: 18.0)),
                    ),
                    ButtonBar(
                      children: [
                        ElevatedButton(
                            onPressed: () {}, child: const Text("Play")),
                        ElevatedButton(
                            onPressed: () {}, child: const Text("Pause")),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // body: PageView.builder(
      //     itemCount: imgList.length,
      //     pageSnapping: true,
      //     controller: _pageController,
      //     itemBuilder: (context, pagePosition) {
      //       return Container(
      //         margin: const EdgeInsets.all(5),
      //         child: Image.network(imgList[pagePosition]),
      //       );
      //     })
    );
  }
}
