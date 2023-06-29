import 'package:flutter/material.dart';
import 'package:my_flutter_app/constants/constants.dart';

class RecomendedWithButton extends StatelessWidget {
  const RecomendedWithButton({
    this.text,
    Key? key,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: kDefaultPadding / 4),
                child: Text(
                  text.toString(),
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.only(right: kDefaultPadding / 4),
                  color: kPrimaryColor.withOpacity(0.2),
                  height: 7,
                ),
              ),
            ],
          ),
          Spacer(),
          MaterialButton(
            onPressed: () {},
            child: Text(
              'More',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            color: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ],
      ),
    );
  }
}
