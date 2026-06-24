import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/latest_transaction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class LatestTransactionListTile extends StatelessWidget {
  const LatestTransactionListTile({
    super.key,
    required this.latestTransactionModel,
  });
  final LatestTransactionModel latestTransactionModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: Color(0xffFAFAFA),
      ),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(latestTransactionModel.image),
          title: Text(
            latestTransactionModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            latestTransactionModel.subtitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
