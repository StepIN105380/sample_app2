// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  final String _previewurl = "https://www.google.com/maps/@12.2945536,76.6246912,12z";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 170,
          width: double.infinity,
          child: Image.network(
            _previewurl,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
        Row(
          children: <Widget>[
            FlatButton.icon(
              icon: const Icon(Icons.location_on),
              label: Text("current location"),
              onPressed: () {},
            ),
            FlatButton.icon(
              icon: const Icon(Icons.map),
              label: Text("Select on Map"),
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}
