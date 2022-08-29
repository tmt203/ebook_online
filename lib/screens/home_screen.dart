import 'package:ebook_app/constants.dart';
import 'package:ebook_app/utils/sup_function.dart';
import 'package:flutter/material.dart';

import '../widgets/best_of_the_day_card.dart';
import '../widgets/reading_list_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage("assets/images/main_page_bg.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * .1),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: RichText(
                  maxLines: 2,
                  text: TextSpan(
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 30),
                    children: const [
                      TextSpan(text: 'What are you\nreading'),
                      TextSpan(text: ' today?', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ReadingListCard(
                      image: "assets/images/book-1.png",
                      title: 'Crushing & Influence',
                      auth: 'Gary Venchuk',
                      rating: 4.9,
                      pressDetails: () => openDetailsScreen(context),
                      pressRead: () => returnToWelcomeScreen(context),
                    ),
                    ReadingListCard(
                      image: "assets/images/book-2.png",
                      title: 'Top 10 Hacks...',
                      auth: 'Herman Joel',
                      rating: 4.9,
                      pressDetails: () => openDetailsScreen(context),
                      pressRead: () => returnToWelcomeScreen(context),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 20),
                        children: const [
                          TextSpan(text: 'Best of the '),
                          TextSpan(text: 'day', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    BestOfTheDayCard(size: size, context: context),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 20),
                        children: const [
                          TextSpan(text: 'Continue '),
                          TextSpan(
                            text: 'reading...',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 80,
                      width: double.infinity,
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
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(38.5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 30.0, right: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: const [
                                          Text(
                                            'Crushing & Influence',
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Gary Venchuk',
                                            style: TextStyle(color: kLightBlackColor),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Text(
                                              'Chaper 7 of 18',
                                              style: TextStyle(fontSize: 10, color: kLightBlackColor),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    "assets/images/book-1.png",
                                    width: 55,
                                  ),
                                ],
                              ),
                            )),
                            Container(
                              height: 7,
                              width: size.width * 0.6,
                              decoration: BoxDecoration(
                                color: kProgressIndicator,
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
