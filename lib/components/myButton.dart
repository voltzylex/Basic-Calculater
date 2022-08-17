import 'package:calculater_app/constants.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color colour;
  final VoidCallback onPress;
  const MyButton({
    Key? key,
    required this.title,
    this.colour = kColorsGrey,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: 80,
          width: 90,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(20),
            color: colour,
          ),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
