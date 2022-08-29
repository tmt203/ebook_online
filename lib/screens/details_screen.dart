import 'package:ebook_app/constants.dart';
import 'package:ebook_app/widgets/book_rating.dart';
import 'package:ebook_app/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Header
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * 0.4,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        SizedBox(height: size.height * 0.1),
                        const BookInfo(),
                      ],
                    ),
                  ),
                ),
                // Chaper
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.4 - 30),
                  child: Column(
                    children: [
                      ChaperCard(size: size, name: 'Money', tag: 'Light is about change', chaperNumber: 1, press: () {}),
                      ChaperCard(size: size, name: 'Power', tag: 'Everything loves power', chaperNumber: 2, press: () {}),
                      ChaperCard(size: size, name: 'Influence', tag: 'Influence easily like never before', chaperNumber: 3, press: () {}),
                      ChaperCard(size: size, name: 'Win', tag: 'Winning is what matters', chaperNumber: 4, press: () {}),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 20),
                      children: const [
                        TextSpan(text: 'You might also '),
                        TextSpan(
                          text: 'like...',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 180,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.only(left: 24, top: 24, right: 24),
                            width: double.infinity,
                            height: 160,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFF8F9),
                              borderRadius: BorderRadius.circular(29),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  maxLines: 2,
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'How to Win\nFriends & Influence',
                                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: '\nGary Venchuk',
                                        style: TextStyle(color: kLightBlackColor),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    BookRating(score: 4.9),
                                    SizedBox(width: 20),
                                    RoundedButton(text: 'Read', verticalPadding: 10),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Image.asset("assets/images/book-3.png"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChaperCard extends StatelessWidget {
  const ChaperCard({
    Key? key,
    required this.size,
    required this.name,
    required this.tag,
    required this.chaperNumber,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String name;
  final String tag;
  final int chaperNumber;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      width: size.width * 0.9,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 33,
            color: kShadowColor,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Chaper $chaperNumber: $name',
                  style: const TextStyle(
                    fontSize: 16,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: '\n$tag',
                  style: const TextStyle(
                    color: kLightBlackColor,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: press,
            icon: const Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Crushing &',
                style: Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 28),
              ),
              Text(
                'Influence',
                style: Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "When the earth was flat andeveryone wanted to win the gameof the best and people and winning with an A game with all the things you have.",
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                          maxLines: 5,
                        ),
                        SizedBox(height: 5),
                        RoundedButton(
                          text: 'Read',
                          verticalPadding: 10,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                        padding: const EdgeInsets.only(left: 15),
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                      ),
                      const BookRating(score: 4.9),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.asset("assets/images/book-1.png", height: 200),
      ],
    );
  }
}
