import 'package:carousel_slider/carousel_slider.dart';
import 'package:f_project/Style.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'ScreenSize.dart';
import 'food_listview.dart';

class TheMainPage extends StatefulWidget {
  const TheMainPage({super.key});

  @override
  State<TheMainPage> createState() => _TheMainPageState();
}

class _TheMainPageState extends State<TheMainPage> {
  final imgList = [
    'image/1.png',
    'image/2.png',
    'image/3.png',
  ];
  final pickthisweek = [
    'image/f1.png',
    'image/f2.png',
    'image/f3.png',
    'image/food.png',
    'image/foodi.png',
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'image/Back.png',
                    height: 17,
                  ),
                  Image.asset(
                    'image/Row.png',
                    height: 19,
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2,
              ),
              Text(
                'The Main Food',
                style: kQuestrialMedium.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 6),
              ),
              Text(
                '12 Menu',
                style: kQuestrialMedium.copyWith(
                    color: kOTextColor,
                    fontSize: SizeConfig.blockSizeHorizontal! * 5),
              ),
              Food_list(
                image: imgList,
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3.5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: SizeConfig.screenHeight! * 0.22,
                    width: SizeConfig.screenWidth! * 4,
                    child: CarouselSlider.builder(
                      itemCount: imgList.length,
                      itemBuilder: (context, index, realIndex) {
                        final urlimage = imgList[index];
                        return buildImage(index, urlimage);
                      },
                      options: CarouselOptions(
                        height: SizeConfig.screenHeight! * 0.3,
                        autoPlay: true,
                        onPageChanged: (index, reason) =>
                            setState(() => activeIndex = index),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  buildIndicator(),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3.5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Popular this week',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: kQuestrialMedium.copyWith(fontSize: 24),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 122,
                    height: 41,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: kOTextColor,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Hero(
                              tag: 'doctor!.doctorName',
                              child: Material(
                                color: Colors.transparent,
                                child: Text(
                                  'Vegetables',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: kQuestrialMedium.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Image.asset(
                            'image/Vector (1).png',
                            height: 13,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              MainManu(
                image: pickthisweek,
              )
            ],
          ),
        ),
      )),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imgList.length,
        effect: ExpandingDotsEffect(
            activeDotColor: Colors.red, dotHeight: 10, dotWidth: 10),
      );
  Widget buildImage(int intex, String urlImage) => Container(
        width: SizeConfig.screenWidth! * 4,
        height: SizeConfig.screenHeight,
        margin: EdgeInsets.symmetric(horizontal: 12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      );
}
