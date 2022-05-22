import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:reasturant_design_app/widgets/small_image_widget.dart';

import 'little_card_widget.dart';

class RestaurantWidget extends StatelessWidget {
  const RestaurantWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Card(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Open',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                                const Text(
                                  '4.5',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 30, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Happy Bones',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          LittleCardWidget(
                            title: 'Italian',
                            first: const Color(0xffFF5673),
                            second: const Color(0xffFF8C48),
                          ),
                          LittleCardWidget(
                            title: '12 km',
                            first: const Color(0xff8884FF),
                            second: const Color(0xff8C84FF),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 25),
                        child: RowSuper(
                          children: [
                            SmallImageWidget(image: '6.jpg'),
                            SmallImageWidget(image: '7.png'),
                            SmallImageWidget(image: '8.jpg'),
                            SmallImageWidget(image: '9.jpg'),
                          ],
                          innerDistance: -41,
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '394 Broome St, New York, NY 10013, USA',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
