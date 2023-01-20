// ignore_for_file: avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:slider/widgets/slider_widget.dart';


class HorizontalSlider extends StatefulWidget {
  const HorizontalSlider(this.length, {super.key});
  final int length;
  @override
  State<HorizontalSlider> createState() => _HorizontalSliderState();
}

class _HorizontalSliderState extends State<HorizontalSlider> {
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
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    print('dispose');
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: widget.length,
      controller: pageController,
      onPageChanged: (value) => updateCurrent(value),
      itemBuilder: (context, index) => SliderWidget(widget.length, index),
    );
  }
}
