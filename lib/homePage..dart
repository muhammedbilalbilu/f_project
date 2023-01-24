import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'ScreenSize.dart';
import 'Style.dart';
import 'foodCart..dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                //  kQuestrialSemibold.copyWith(
                //     color: kBlackColor,
                //     fontSize: SizeConfig.blockSizeHorizontal! * 6,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello Linda',
                      style: kQuestrialRegular.copyWith(
                          color: kOTextColor,
                          fontSize: SizeConfig.blockSizeHorizontal! * 6),
                    ),
                    CircleAvatar(
                      radius: 23,
                      child: Image.asset('image/profile.png'),
                    )
                  ],
                ),

                Text(
                  'Choose Your Food Today',
                  style: kQuestrialBold.copyWith(
                      color: kOBlackColor,
                      fontSize: SizeConfig.blockSizeHorizontal! * 6.0),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2,
                ),
                Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                              offset: Offset(0, 2))
                        ]),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Align(
                          alignment: Alignment(5, 0.1),
                          child: Image.asset(
                            'image/search.png',
                            height: 19,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            style: TextStyle(color: kOGreyColor),
                            decoration: InputDecoration(
                                hintText: 'search',
                                hintStyle: kQuestrialRegular.copyWith(
                                    color: kOGreyColor),
                                border: InputBorder.none),
                          ),
                        ),
                        Text(
                          '|',
                          style: kQuestrialRegular.copyWith(
                              color: kOGreyColor, fontSize: 20),
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal! * 3,
                        ),
                        Align(
                          alignment: AlignmentDirectional(5, 0.1),
                          child: Image.asset(
                            'image/Vector (1).png',
                            height: 19,
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal! * 3,
                        ),
                      ],
                    )),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 3,
                ),
                Stack(
                  children: [
                    Image.asset(
                      'image/HomeScreen.png',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Sales of',
                              style: kQuestrialBold.copyWith(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 7)),
                          Text('Today',
                              style: kQuestrialBold.copyWith(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 7)),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 1.5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Food Catagori',
                      style: kQuestrialMedium.copyWith(
                          color: Colors.black,
                          fontSize: SizeConfig.blockSizeHorizontal! * 5),
                    ),
                    Text(
                      'View All',
                      style: kQuestrialMedium.copyWith(
                          color: kOrangeColor,
                          fontSize: SizeConfig.blockSizeHorizontal! * 5),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 1.5,
                ),
                TopDoctorsCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
