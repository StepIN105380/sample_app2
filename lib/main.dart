//import 'dart:convert';
import 'package:flutter/material.dart';

import './feed.dart';
import './camera.dart';

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SampleAppState();
  }
}

class _SampleAppState extends State<SampleApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    //if (index == 1) {}
  }

  Widget _getBody() {
    List<Widget> pages = [
      Center(
        child: Text(
          "Upload Page",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      Feed(),
      CameraPage(),
      // Center(
      //   child: Text(
      //     "Camera Page",
      //     style: TextStyle(
      //       fontSize: 20,
      //       fontWeight: FontWeight.bold,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      Center(
        child: Text(
          "My Act Page",  
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      Center(
        child: Text(
          "Wallet Page",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ];

    return IndexedStack(
      index: _selectedIndex,
      children: pages,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // title: IconButton(
          //   onPressed: null,
          //   icon: const Icon(Icons.dehaze_rounded),
          // ),
          backgroundColor: Colors.black,
          actions: <Widget>[
            Icon(
              Icons.favorite,
              color: Colors.purple,
            ),
          ],
          //toolbarTextStyle: TextStyle(backgroundColor: Colors.pink),
        ),
        backgroundColor: Colors.grey[900],
        body: _getBody(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Text(
                  'Gratitude',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amber[800],
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.upload),
              label: 'Upload',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.feed),
              label: 'Feed',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_outlined),
              label: 'Camera',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.volunteer_activism_outlined),
              label: 'My Act',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_outlined),
              label: 'Wallet',
              backgroundColor: Colors.black,
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
