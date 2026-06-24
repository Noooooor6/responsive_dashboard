import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/all_expenses.dart';
import 'package:responsive_dashboard/widget/all_expenses_and_quick_invoice_sectio.dart';
import 'package:responsive_dashboard/widget/custom_drawer.dart';
import 'package:responsive_dashboard/widget/quick_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: AllExpensesAndQuickInvoiceSection()),
      ],
    );
  }
}
