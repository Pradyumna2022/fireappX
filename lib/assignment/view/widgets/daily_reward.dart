import 'package:flutter/material.dart';

class DailyReward extends StatelessWidget {
  final String rimagePath;
  final String cimagePath;
  final String title;
  final String subtitle;
  final String coinsValue;

  const DailyReward(
      {super.key,
      required this.coinsValue,
      required this.rimagePath,
      required this.cimagePath,
      required this.subtitle,
      required this.title});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: ListTile(
            leading: Image.asset(
              rimagePath,
              width: 40,
            ),
            title: Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              subtitle,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            trailing: SizedBox(
              width: width * 0.22,
              child: Row(
                children: [
                  Text(
                    "+ $coinsValue",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    cimagePath,
                    width: 25,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
