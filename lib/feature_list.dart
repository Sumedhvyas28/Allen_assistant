import 'package:allen/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FeatureList extends StatelessWidget {
  const FeatureList({
    super.key,
    required this.color,
    required this.headerText,
    required this.descriptionText,
  });

  final Color color;
  final String descriptionText;
  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20).copyWith(left: 15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                headerText,
                style: const TextStyle(
                    fontFamily: 'Cera Pro',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Pallete.blackColor),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                descriptionText,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Cera Pro',
                  color: Pallete.blackColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
