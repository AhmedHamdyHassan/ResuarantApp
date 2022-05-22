import 'package:flutter/material.dart';

import '../widgets/restuarant_card_widget.dart';

class SecondScreen extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  SecondScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trending Restaurants'),
      ),
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
                        hintText: 'Find Restaurant', border: InputBorder.none),
                  ),
                  trailing: Icon(Icons.filter_list_alt),
                ),
              ),
              //End or Search Bar
              Expanded(
                  child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return const RestaurantWidget();
                },
                itemCount: 20,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
