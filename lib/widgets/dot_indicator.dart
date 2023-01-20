import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator(this.length, this.current, {super.key});
  final int length, current;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: List.generate(
        length,
        (index) => Container(
          padding: EdgeInsets.all(index == current ? 7 : 5),
          margin: const EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
            color: index == current ? Colors.black : Colors.grey,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
