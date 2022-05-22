import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StyledImageWidget extends StatelessWidget {
  late String firstImage, secondImage, title;
  StyledImageWidget(
      {Key? key,
      required this.firstImage,
      required this.secondImage,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height / 6.2,
      width: MediaQuery.of(context).size.height / 6.2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 6.2,
            width: MediaQuery.of(context).size.height / 6.2,
            child: Image.asset(
              'assets/images/$firstImage.png',
              fit: BoxFit.cover,
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 6.2,
              width: MediaQuery.of(context).size.height / 6.2,
              child: Image.asset(
                'assets/images/$secondImage.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
