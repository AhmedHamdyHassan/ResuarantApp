import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmallImageWidget extends StatelessWidget {
  late String image;
  SmallImageWidget({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 3)),
      height: 25,
      width: 25,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          'assets/images/$image',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
