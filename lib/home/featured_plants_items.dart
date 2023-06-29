import 'package:flutter/material.dart';
import 'package:my_flutter_app/constants/constants.dart';

class FeaturedPlantsCard extends StatelessWidget {
  const FeaturedPlantsCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          BuildFeaturedPlantItem(
              size: size, image: 'assets/images/bottom_img_1.png'),
          BuildFeaturedPlantItem(
              size: size, image: 'assets/images/bottom_img_2.png'),
        ],
      ),
    );
  }
}

class BuildFeaturedPlantItem extends StatelessWidget {
  const BuildFeaturedPlantItem({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(
          bottom: kDefaultPadding / 2,
          top: kDefaultPadding / 2,
          left: kDefaultPadding,
        ),
        width: size.width * 0.65,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            )),
      ),
    );
  }
}
