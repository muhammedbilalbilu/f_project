import 'package:flutter/material.dart';

import 'ScreenSize.dart';
import 'Style.dart';

class TopDoctorsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 5, offset: Offset(0, 2))
                  ]),
              height: 80,
              width: MediaQuery.of(context).size.width - 32,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Hero(
                      tag: 'image/food.png',
                      child: Material(
                        type: MaterialType.transparency,
                        child: Container(
                          width: 88,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'image/food.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Hero(
                            tag: 'doctor!.doctorName',
                            child: Material(
                              color: Colors.transparent,
                              child: Text(
                                'Soups',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: kQuestrialMedium.copyWith(fontSize: 24),
                              ),
                            ),
                          ),
                          Text(
                            '12 Menu',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: kQuestrialMedium.copyWith(
                                fontSize: 16, color: kOTextColor),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Image.asset(
                        'image/HomeBack.png',
                        height: 20,
                      ),
                    ),
                  ]))),
    );
  }
}
