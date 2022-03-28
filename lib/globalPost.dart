import 'package:flutter/material.dart';

import './post_json.dart';

class GlobalPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) => Container(
        //color: Colors.black,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    posts[index].name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  // SizedBox(
                  //   width: 150,
                  // ),
                  // Icon(
                  //   Icons.person_sharp,
                  //   color: Colors.grey[350],
                  // ),
                  //Icon(color: posts[index].profileImg)
                  Container(
                    height: 33.0,
                    width: 33.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(posts[index].postImg),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 13.0, 10.0, 10.0),
              child: Container(
                height: 300,
                //padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(posts[index].postImg),
                      fit: BoxFit.cover),
                ),
              ),
              // InteractiveViewer(
              //   boundaryMargin: EdgeInsets.all(8.0),
              //   minScale: 0.1,
              //   maxScale: 1.6,
              //   onInteractionUpdate: (_) => print("Interaction Updated"),
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.circular(0),
              //     child: Flexible(
              //       fit: FlexFit.loose,
              //       child: Image(
              //         image: AssetImage(
              //           posts[index].postImg,
              //         ),
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //   ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
              child: Text(
                posts[index].description,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.black,
          // boxShadow: const [
          //   BoxShadow(
          //       color: Colors.white,
          //       spreadRadius: 2,
          //       blurStyle: BlurStyle.inner),
          // ],
        ),
      ),
    );
  }
}
