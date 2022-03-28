import 'package:flutter/material.dart';

class PostJSON {
  final String name;
  final String postImg;
  final String description;
  final DateTime date;
  final String location;
  final int id;

  PostJSON({
    required this.id,
    required this.name,
    required this.postImg,
    required this.date,
    required this.location,
    required this.description,
  });
}

List<PostJSON> posts = [
  PostJSON(
      id: 1,
      name: 'Kim_Nam_Joon',
      postImg: 'assets/images/knj.jpg',
      description:
          'No matter who you are, where you are from, your skin colour, your gender identity; just speak yourself. Find your name and find your voice by speaking yourself.',
      date: DateTime.utc(1994, 9, 12),
      location: 'Seoul'),

  PostJSON(
      id: 2,
      name: 'Jeon_jung_kook',
      postImg: 'assets/images/jjk.jpg',
      description: 'Whenever ARMYs miss us, you can come to us.',
      date: DateTime.utc(1994, 9, 12),
      location: 'Seoul'),

  PostJSON(
      id: 1,
      name: 'User 1997',
      postImg: 'assets/images/6c6c6c.jpg',
      description:
          'No matter who you are, where you are from, your skin colour, your gender identity; just speak yourself. Find your name and find your voice by speaking yourself.',
      date: DateTime.utc(1994, 9, 12),
      location: 'Seoul'),

  PostJSON(
      id: 3,
      name: 'Park_Jimin',
      postImg: 'assets/images/pjm.jpg',
      description:
          'Life is more beautiful knowing that we have taken a loan on death. Even light is treasured more when there is darkness.',
      date: DateTime.utc(1994, 9, 12),
      location: 'Seoul'),

  PostJSON(
      id: 4,
      name: 'Kim_Seok_Jin',
      postImg: 'assets/images/ksj.png',
      description:
          'It is great to be ambitious and aim for more and more to be happy in the future, as I have lived up until now, but I think it is one of the nicest ways to live life if you know how to enjoy what is in the present.',
      date: DateTime.utc(1994, 9, 12),
      location: 'Seoul'),

  PostJSON(
      id: 5,
      name: 'Kim_Tae_Hyung',
      postImg: 'assets/images/kth.jpg',
      description:
          'Although youth can be beautiful, it can be short and wander off; like a shadow, it has a reckless danger to it.',
      date: DateTime.utc(1994, 9, 12),
      location: 'Seoul'),

  PostJSON(
      id: 6,
      name: 'Min_Yoongi',
      postImg: 'assets/images/myg.jpg',
      description:
          'Everyone suffers in their life. There are many sad days. But rather than sad days, we hope to have better days. That is what makes us live. That is what makes us dream.',
      date: DateTime.utc(1994, 9, 12),
      location: 'Seoul'),

  PostJSON(
      id: 7,
      name: 'Jung_Hoseok',
      postImg: 'assets/images/jhs.jpg',
      description:
          'Too many stars, too many dreams. The reality is that in front of these things, I am just a speck of dust.',
      date: DateTime.utc(1994, 9, 12),
      location: 'Seoul'),
  // {
  //   'id': 2,
  //   'name': 'Jeon_jung_kook',
  //   'profileImg': const Icon(Icons.person_sharp),
  //   'postImg': 'assets/images/jjk.jpg',
  //   'description': 'kookie, bunny, golden maknae',
  //   'date': '1/09/1997',
  //   'location': 'Busan'
  // },
  // {
  //   'id': 3,
  //   'name': 'Park_Jimin',
  //   'profileImg': const Icon(Icons.person_sharp),
  //   'postImg': 'assets/images/pjm.jpg',
  //   'description': 'chimchim, jiminie, mochi',
  //   'date': '13/10/1995',
  //   'location': 'Busan'
  // },
  // {
  //   'id': 4,
  //   'name': 'Kim_Seok_Jin',
  //   'profileImg': const Icon(Icons.person_sharp),
  //   'postImg': "assets/images/ksj.png",
  //   'description': 'handsome, eat jin, hamster',
  //   'date': '04/12/1992',
  //   'location': 'Gwacheon'
  // },
  // {
  //   'id': 5,
  //   'name': 'Kim_Tae_Hyung',
  //   'profileImg': const Icon(Icons.person_sharp),
  //   'postImg': 'assets/images/kth.jpg',
  //   'description': 'joonie, destructor, leader',
  //   'date': '12/09/1994',
  //   'location': 'Seoul'
  // },
  // {
  //   'id': 1,
  //   'name': 'Kim_Nam_Joon',
  //   'profileImg': const Icon(Icons.person_sharp),
  //   'postImg': 'assets/images/knj.jpg',
  //   'description': 'joonie, destructor, leader',
  //   'date': '12/09/1994',
  //   'location': 'Seoul'
  // },
  // {
  //   'id': 1,
  //   'name': 'Kim_Nam_Joon',
  //   'profileImg': const Icon(Icons.person_sharp),
  //   'postImg': 'assets/images/knj.jpg',
  //   'description': 'joonie, destructor, leader',
  //   'date': '12/09/1994',
  //   'location': 'Seoul'
  // },
];
