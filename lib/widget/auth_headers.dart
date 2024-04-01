import 'package:flutter/material.dart';

class AuthHeadersWidget extends StatelessWidget {
  final String headerTitle;
  final String usersCred;
  final String usersCredButtonTitle;

  const AuthHeadersWidget(
      {super.key,
      required this.headerTitle,
      required this.usersCred,
      required this.usersCredButtonTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          "FarmerEats",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          headerTitle,
          style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              usersCred,
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            Text(
              ' $usersCredButtonTitle',
              style: TextStyle(fontSize: 20, color: Color(0xffD5715B)),
            ),
          ],
        ),
      ],
    );
  }
}
