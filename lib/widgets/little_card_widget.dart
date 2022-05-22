import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LittleCardWidget extends StatelessWidget {
  late String title;
  late Color first, second;
  LittleCardWidget({
    Key? key,
    required this.title,
    required this.first,
    required this.second,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 4, bottom: 4, left: 7, right: 7),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            first,
            second,
          ],
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
