import 'package:flutter/material.dart';

class IntroCard extends StatelessWidget {
  final String text;

  const IntroCard({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "$text",
        style: TextStyle(fontSize: 20),
      ),
      width: 400,
      height: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.blue[50],
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              offset: Offset(0, 8),
              blurRadius: 25,
            )
          ],
          border: Border.all(color: Colors.blue, width: 1),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
