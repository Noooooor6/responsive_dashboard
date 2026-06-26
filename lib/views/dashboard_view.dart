import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widget/custom_drawer.dart';
import 'package:responsive_dashboard/widget/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/widget/dashboard_tablet_layout.dart';
import 'package:responsive_dashboard/widget/desktop_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scafoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              leading: IconButton(
                onPressed: () {
                  scafoldKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
              backgroundColor: Color(0xffFAFAFA),
            )
          : null,
      backgroundColor: Color(0xffF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < 800 ? CustomDrawer() : null,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => DashboardMobileLayout(),
        tabletLayout: (context) => DashboardTabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
