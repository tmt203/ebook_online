import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    this.text,
    this.press,
    this.verticalPadding,
    this.fontSize,
  }) : super(key: key);

  final String? text;
  final VoidCallback? press;
  final double? verticalPadding;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 16),
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: verticalPadding!.toDouble()),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: kShadowColor,
              offset: const Offset(0.0, 15.0),
              blurRadius: 30,
            ),
          ],
        ),
        child: Text(
          text.toString(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
        ),
      ),
    );
  }
}
