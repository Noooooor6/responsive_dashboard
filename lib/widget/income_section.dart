import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/custom_background_container.dart';
import 'package:responsive_dashboard/widget/detaild_income_chart.dart';
import 'package:responsive_dashboard/widget/income_chart.dart';
import 'package:responsive_dashboard/widget/income_details.dart';
import 'package:responsive_dashboard/widget/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(children: [IncomeHeader(), IncomeBodySection()]),
    );
  }
}

class IncomeBodySection extends StatelessWidget {
  const IncomeBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return width >= 1300 && width < 1750
        ? Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: DetaildIncomeChart(),
            ),
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
