import 'package:carousel_slider_plus/carousel_slider_plus.dart' as carousel;
import 'package:carousel_slider_plus/carousel_slider_plus.dart';

import 'package:educate/widgets/slider/data.dart';
import 'package:educate/widgets/slider/image_viewer.dart';
import 'package:flutter/material.dart';

class FinalView extends StatefulWidget {
  const FinalView({super.key});

  @override
  State<FinalView> createState() => _FinalViewState();
}

class _FinalViewState extends State<FinalView> {
  late CarouselSliderController outerCarouselController;
  int outerCurrentPage = 0;

  @override
  void initState() {
    outerCarouselController = CarouselSliderController();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Size size;
    // double height, width;

    // size = MediaQuery.of(context).size;
    // height = size.height;
    // width = size.width;

    return _outerBannerSlider();
  }

  /// Outer Style Indicators Banner Slider
  Widget _outerBannerSlider() {
    return Column(
      children: [
        carousel.CarouselSlider(
          controller: outerCarouselController,

          /// It's options
          options: carousel.CarouselOptions(
            // autoPlay: true,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            aspectRatio: 16 / 8,
            viewportFraction: .95,
            onPageChanged: (index, reason) {
              setState(() {
                outerCurrentPage = index;
              });
            },
          ),

          /// Items
          items: list(),
        ),
        const SizedBox(
          height: 10,
        ),

        /// Indicators
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            list().length,
            (index) {
              bool isSelected = outerCurrentPage == index;
              return GestureDetector(
                onTap: () {
                  outerCarouselController.animateToPage(index);
                },
                child: AnimatedContainer(
                  width: isSelected ? 30 : 10,
                  height: 10,
                  margin: EdgeInsets.symmetric(horizontal: isSelected ? 6 : 3),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.black : Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(
                      40,
                    ),
                  ),
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _listItem() {
    return Container(
      //  margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Image.asset(
        "assets/carousel.png",
        height: 100,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }

  List<Widget> list() {
    return [_listItem(), _listItem(), _listItem(), _listItem()];
  }
}
