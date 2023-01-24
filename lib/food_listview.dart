// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:f_project/ScreenSize.dart';

import 'Style.dart';

class Food_list extends StatelessWidget {
  List image;
  Food_list({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // return Text('data');
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: image.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(
              left: index == 0 ? 0 : 10, right: index == 10 - 1 ? 30 : 0),
          child: Container(
              width: 88,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  image[index],
                  width: 88,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              )),
        ),
      ),
    );
  }
}

class MainManu extends StatelessWidget {
  List image;
  MainManu({
    Key? key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: image.length,
          itemBuilder: (context, index) => Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: index == 0 ? 0 : 10, right: index == 10 - 1 ? 30 : 0),
                child: Container(
                  width: 141,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        image[index],
                      ).image,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Vegan Egg',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: kQuestrialRegular.copyWith(
                  fontSize: 20,
                ),
              ),
              Text(
                '\$13.00',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: kQuestrialRegular.copyWith(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ));
  }
}
