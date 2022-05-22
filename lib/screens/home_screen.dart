import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/restuarant_card_widget.dart';
import '../widgets/styled_image_widget.dart';
import '../widgets/styled_row_widget.dart';

class HomeScreen extends StatelessWidget {
  final List<Widget> listViewOfStyledImages = [
    StyledImageWidget(
      firstImage: 'red',
      secondImage: '1',
      title: 'Italian',
    ),
    StyledImageWidget(
      firstImage: 'mixed',
      secondImage: '2',
      title: 'Chienese',
    ),
    StyledImageWidget(
      firstImage: 'blue',
      secondImage: '3',
      title: 'Mixician',
    ),
    StyledImageWidget(
      firstImage: 'red',
      secondImage: '1',
      title: 'Italian',
    ),
    StyledImageWidget(
      firstImage: 'mixed',
      secondImage: '2',
      title: 'Chienese',
    ),
    StyledImageWidget(
      firstImage: 'blue',
      secondImage: '3',
      title: 'Mixician',
    ),
    StyledImageWidget(
      firstImage: 'red',
      secondImage: '1',
      title: 'Italian',
    ),
    StyledImageWidget(
      firstImage: 'mixed',
      secondImage: '2',
      title: 'Chienese',
    ),
    StyledImageWidget(
      firstImage: 'blue',
      secondImage: '3',
      title: 'Mixician',
    ),
  ];
  final List<String> images = [
    '4.jpg',
    '5.jpg',
    '6.jpg',
    '7.png',
    '8.jpg',
    '9.jpg',
    '4.jpg',
    '5.jpg',
    '6.jpg',
    '7.png',
    '8.jpg',
    '9.jpg',
  ];
  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Text(
          '+',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.w300),
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Start Seach Bar
              const Card(
                child: ListTile(
                  leading: Icon(Icons.search),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Find Restaurant',
                      border: InputBorder.none,
                    ),
                  ),
                  trailing: Icon(Icons.filter_list_alt),
                ),
              ),
              //End or Search Bar
              StyledRowWidget(title: 'Trending Restaurant', number: 49),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const RestaurantWidget();
                  },
                  itemCount: 10,
                ),
              ),
              StyledRowWidget(title: 'Category', number: 9),
              //Start Row of Styled Images
              SizedBox(
                height: MediaQuery.of(context).size.height / 5.5,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return listViewOfStyledImages[index];
                  },
                  itemCount: listViewOfStyledImages.length,
                ),
              ),
              //End of Row of Styled Images
              StyledRowWidget(title: 'Friends', number: 56),
              //Start of ListView
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/images/${images[index]}',
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                    itemCount: images.length),
              ),
              //End Of List View
              const SizedBox(
                height: 1,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
          elevation: 0,
          activeColor: Colors.blueAccent,
          icons: const [
            Icons.home,
            Icons.place,
            Icons.notifications,
            Icons.person
          ],
          activeIndex: 0,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) {}),
    );
  }
}
