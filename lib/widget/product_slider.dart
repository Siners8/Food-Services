import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_service/source/color_assets.dart';

class ActiveDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 20,
        height: 5,
        decoration: BoxDecoration(
          color: ColorAssets.themeColorOrange,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

class InactiveDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 8,
        height: 5,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

/*
 * for slider home page
 */
class ProductSlider extends StatefulWidget {
  final List<String> items;
  ProductSlider({this.items});
  @override
  _ProductSliderState createState() =>
      _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  int activeIndex = 0;
  setActiveDot(index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30,top: 40),
      child: Column(
        // overflow: Overflow.visible,
        children: <Widget>[
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: CarouselSlider(
              onPageChanged: (index) {
                setActiveDot(index);
              },
              autoPlayCurve: Curves.fastLinearToSlowEaseIn,
              autoPlayAnimationDuration: Duration(seconds: 2),
              viewportFraction: 1.0,
              items: widget.items.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Stack(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Image(
                            image: NetworkImage(item),
                          ),
                        ),

                      ],
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(widget.items.length, (idx) {
                return activeIndex == idx ? ActiveDot() : InactiveDot();
              }))
        ],
      ),
    );
  }
}