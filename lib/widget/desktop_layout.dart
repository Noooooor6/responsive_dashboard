import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/all_expenses.dart';
import 'package:responsive_dashboard/widget/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(child: AllExpenses()),
      ],
    );
  }
}
