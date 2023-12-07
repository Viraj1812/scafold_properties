import 'package:flutter/material.dart';

class ScaffoldProperties extends StatefulWidget {
  const ScaffoldProperties({super.key});

  @override
  _ScaffoldPropertiesState createState() => _ScaffoldPropertiesState();
}

class _ScaffoldPropertiesState extends State<ScaffoldProperties> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold Properties!'),
      ),
      body: Center(
        child: Text('$_count'),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.notifications_sharp),
      //       label: 'Notifications',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.message_sharp),
      //       label: 'Messages',
      //     ),
      //   ],
      // ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              tooltip: 'Favorite',
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            ),
            IconButton(
              tooltip: 'Search',
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _count++;
        }),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        elevation: 20.0, //shadow Effect
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text("Viraj Vasani"),
              accountEmail: Text("virajvasani@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.purple,
                child: Text("V"),
              ),
            ),
            // DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //   ),
            //   child: Text('Drawer Header'),
            // ),
            ListTile(
              title: Text("Inbox"),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("Primary"),
              leading: Icon(Icons.inbox),
            ),
            ListTile(
              title: Text("Social"),
              leading: Icon(Icons.people),
            ),
            ListTile(
              title: Text("Promotions"),
              leading: Icon(Icons.local_offer),
            )
          ],
        ),
      ),
    );
  }
}
