// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final List user;
  final int index;

  const Profile({
    Key? key,
    required this.user,
    required this.index,
  }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile : ${widget.user[widget.index]['fullname']}',
            style: TextStyle(fontSize: 18),
          ),
        ),
        body: ListView(
          //scrollDirection: Axis.horizontal,
          children: [
            ListTile(
              onTap: () {
                print('Data: ');
                print(widget.user[widget.index]);
              },
              leading: Icon(Icons.person),
              title: Text('${widget.user[widget.index]['fullname']}'),
            ),
            ListTile(
              onTap: () {
                print(widget.user[0]);
              },
              leading: Icon(Icons.email),
              title: Text('${widget.user[widget.index]['username']}'),
            ),
            ListTile(
              onTap: () {
                print(widget.user[widget.index]);
              },
              leading: Icon(Icons.phone),
              title: Text('099123456'),
            ),
          ],
        ));
  }
}
