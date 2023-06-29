import 'package:flutter/material.dart';
import 'package:my_flutter_app/constants/constants.dart';
import 'package:my_flutter_app/home/RecomendedWithButton.dart';
import 'package:my_flutter_app/home/featured_plants_items.dart';
import 'package:my_flutter_app/home/header_with_search_bar.dart';
import 'package:my_flutter_app/home/recomended_plant_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          RecomendedWithButton(text: "Recomended"),
          RecomendedPlantCard(size: size),
          RecomendedWithButton(text: "Featured Plants"),
          FeaturedPlantsCard(size: size),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
