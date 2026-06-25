import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/custom_dot.dart';

class DotsIndecator extends StatelessWidget {
  const DotsIndecator({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDot(isActive: index == currentIndex),
        ),
      ),
    );
  }
}
