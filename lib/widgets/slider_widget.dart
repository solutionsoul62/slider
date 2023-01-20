import 'package:flutter/material.dart';
import 'package:slider/widgets/dot_indicator.dart';

import '../global/global.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget(this.length, this.index, {super.key});
  final int index, length;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage(images[index]),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xff22252F).withOpacity(0),
              const Color(0xff4C5060),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Image ${index + 1}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              images[index],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 30),
            DotIndicator(length, index),
          ],
        ),
      ),
    );
  }
}
