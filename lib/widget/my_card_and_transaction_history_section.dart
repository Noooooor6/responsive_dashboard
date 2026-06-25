import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widget/custom_background_container.dart';
import 'package:responsive_dashboard/widget/dots_indecator.dart';
import 'package:responsive_dashboard/widget/my_card_page_view.dart';
import 'package:responsive_dashboard/widget/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatefulWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  State<MyCardAndTransactionHistorySection> createState() =>
      _MyCardAndTransactionHistorySectionState();
}

class _MyCardAndTransactionHistorySectionState
    extends State<MyCardAndTransactionHistorySection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My card', style: AppStyles.styleSemiBold20(context)),
          SizedBox(height: 20),
          MyCardPageView(pageController: pageController),
          SizedBox(height: 20),
          DotsIndecator(currentIndex: currentPageIndex),
          Divider(color: Color(0xffF1F1F1), height: 40),
          TransactionHistory(),
        ],
      ),
    );
  }
}
