import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/custom_botton.dart';
import 'package:responsive_dashboard/widget/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(title: 'Item mount', hint: 'USD'),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomBotton(
                title: 'Add more details',
                textColor: Color(0xff4EB7F2),
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: CustomBotton(
                title: 'Save',
                textColor: Colors.white,
                backgroundColor: Color(0xff4EB7F2),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
