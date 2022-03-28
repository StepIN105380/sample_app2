import 'package:flutter/material.dart';
import 'package:sample_app2/map.dart';
import './globalPost.dart';

class Feed extends StatelessWidget {
  // final String profileImg;
  // final String name;
  // final String postImg;
  // final String description;
  // final String date;
  // final String location;

  // Feed({
  //   required this.profileImg,
  //   required this.name,
  //   required this.postImg,
  //   required this.date,
  //   required this.location,
  //   required this.description,
  // });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        // appBar: AppBar(
        //   bottom: const TabBar(
        appBar: const TabBar(
          tabs: const <Widget>[
            Tab(
              text: "Feed",
              // iconMargin: const EdgeInsets.all(5),
            ),
            Tab(
              text: "Map",
            ),
          ],
        ),

        backgroundColor: Colors.grey[900],

        body: Container(
          margin: const EdgeInsets.all(10),
          child: TabBarView(
            children: <Widget>[
              Center(
                child: Text(
                  "Feed View",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              //GlobalPost(),
              Map()
              // Center(
              //   child: Text(
              //     "Map View",
              //     style: TextStyle(
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.white,
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
