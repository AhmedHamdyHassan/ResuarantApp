import 'package:flutter/material.dart';
import 'package:reasturant_design_app/screens/SecondScreen.dart';

// ignore: must_be_immutable
class StyledRowWidget extends StatelessWidget {
  late String title;
  late int number;
  StyledRowWidget({
    Key? key,
    required this.title,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
              );
            },
            child: Text(
              'See all($number)',
              style: const TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
