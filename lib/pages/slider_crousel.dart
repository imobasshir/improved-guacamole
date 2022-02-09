import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderMy extends StatefulWidget {
  const SliderMy({Key? key}) : super(key: key);

  @override
  _SliderMyState createState() => _SliderMyState();
}

class _SliderMyState extends State<SliderMy> {
  final _imagesPath = [
    'images/schedule-hero.png',
    'images/learn-expert-dash.png',
    'images/learn_hero.png',
    'images/flutter.png',
    'images/faq-hero.png',
    'images/community-hero.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
            ),
            items: _imagesPath.map((image) {
              return Builder(builder: (context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(image),
                );
              });
            }).toList(),
          ),
        ),
      ),
    );
  }
}
