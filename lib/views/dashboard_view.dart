import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widget/desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => SizedBox(),
        tabletLayout: (context) => SizedBox(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
