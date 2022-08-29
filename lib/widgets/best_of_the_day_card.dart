import 'package:flutter/material.dart';

import '../constants.dart';
import '../utils/sup_function.dart';
import 'book_rating.dart';
import 'two_side_rounded_button.dart';

class BestOfTheDayCard extends StatelessWidget {
  const BestOfTheDayCard({
    Key? key,
    required this.size,
    required this.context,
  }) : super(key: key);

  final Size size;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(left: 24, top: 24, right: size.width * 0.35),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffeaeaeaea).withOpacity(.45),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'New York Time Best For 11th March 2022',
                    style: TextStyle(fontSize: 9, color: kLightBlackColor),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'How To Win \nFriends & Influence',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Gary Venchuk',
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      BookRating(score: 4.9),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "When the earth was flat and everyone wanted to win the game of the best and people….",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              "assets/images/book-3.png",
              width: size.width * 0.37,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * 0.3,
              child: TwoSideRoundedButton(
                text: 'Read',
                radius: 24,
                press: () => returnToWelcomeScreen(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
