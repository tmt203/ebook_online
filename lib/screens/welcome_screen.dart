import 'package:ebook_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/rounded_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Bitmap.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App's title
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.displayMedium,
                children: const [
                  TextSpan(
                    text: "flamin",
                  ),
                  TextSpan(text: 'go.', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            // Start Reading Button
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: RoundedButton(
                text: 'start reading',
                fontSize: 20,
                verticalPadding: 16,
                press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
