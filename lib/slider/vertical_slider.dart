import 'dart:async';

import 'package:flutter/material.dart';
import 'package:slider/widgets/slider_widget.dart';


class VerticalSlider extends StatefulWidget {
  const VerticalSlider(this.length, {super.key});
  final int length;

  @override
  State<VerticalSlider> createState() => _VerticalSliderState();
}

class _VerticalSliderState extends State<VerticalSlider> {
  int current = 0;

  final PageController pageController = PageController(initialPage: 0);

  void updateCurrent(int value) {
    setState(() {
      current = value;
    });
  }

  late Timer _timer;
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (current < widget.length) {
        current++;
      } else {
        current = 0;
      }

      pageController.animateToPage(
        current,
        duration: const Duration(milliseconds: 350),
        curve: Curves.decelerate,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: widget.length,
      controller: pageController,
      scrollDirection: Axis.vertical,
      onPageChanged: (value) => updateCurrent(value),
      itemBuilder: (context, index) => SliderWidget(widget.length, index),
    );
  }
}
