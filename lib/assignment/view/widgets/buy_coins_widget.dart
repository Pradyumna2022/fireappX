import 'package:flutter/material.dart';

class BuyCoinsWidget extends StatelessWidget {
  final String money;
  final String coinsValue;
  final String imagePath;
  const BuyCoinsWidget(
      {super.key,
      required this.money,
      required this.coinsValue,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 2, color: Colors.amber)),
      child: Column(
        children: [
          Text(
            coinsValue,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text('Coins'),
          SizedBox(
            height: 5,
          ),
          Image.asset(imagePath),
          SizedBox(
            height: 5,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "₹ $money",
              style: TextStyle(color: Colors.white, fontSize: 9),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          )
        ],
      ),
    );
  }
}
