import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/custom_background_container.dart';
import 'package:responsive_dashboard/widget/latest_transaction.dart';
import 'package:responsive_dashboard/widget/quick_invoice_form.dart';
import 'package:responsive_dashboard/widget/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 12),
          LatestTransaction(),
          Divider(height: 48, color: Color(0xffF1F1F1)),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
