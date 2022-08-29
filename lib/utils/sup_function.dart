import 'package:ebook_app/screens/details_screen.dart';
import 'package:flutter/material.dart';
import '../screens/welcome_screen.dart';

returnToWelcomeScreen(BuildContext context) {
  return Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomeScreen()));
}

openDetailsScreen(BuildContext context) {
  return Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
}
