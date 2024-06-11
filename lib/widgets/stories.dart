import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';

class StorySlide extends StatefulWidget {
  @override
  State<StorySlide> createState() => _StorySlideState();
}

class _StorySlideState extends State<StorySlide> {
  List<String> images = [
    'assets/images/story_1.png',
    'assets/images/story_2.png',
  ];

  Widget buildCard(String imagePath, int index) => Stack(
        children: [
          Container(
            width: 101.75,
            height: 135.34,
            color: Colors.transparent,
            child: Image.asset(imagePath),
          ),
          Positioned(
            bottom: -21,
            left: 0,
            right: 0,
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/icons/story_btn/close_btn_stry.svg',
                width: 25.51,
                height: 25.51,
              ),
              onPressed: () {
                setState(() {
                  images.removeAt(index);
                });
              },
            ),
          ),
        ],
      );

  Widget buildAddCard() => Container(
        // decoration: Border.all(style: BorderStyle()),
        width: 101.75,
        height: 135.34,
        color: Colors.white,
        child: DottedBorder(
          color: Color.fromRGBO(211, 211, 211, 1),
          strokeWidth: 1.0,
          radius: Radius.circular(10),
          borderType: BorderType.RRect,
          child: Center(
            child: IconButton(
              icon: Icon(
                Icons.add,
              ),
              onPressed: () {
                setState(() {
                  images.add('assets/images/story_2.png');
                });
              },
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Stories",
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'SpaceGrotesk',
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 150.24,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: List.generate(3, (index) {
                    if (index < images.length) {
                      return Row(
                        children: [
                          buildCard(images[index], index),
                          SizedBox(width: 12),
                        ],
                      );
                    } else {
                      return Row(
                        children: [
                          buildAddCard(),
                          SizedBox(width: 12),
                        ],
                      );
                    }
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
