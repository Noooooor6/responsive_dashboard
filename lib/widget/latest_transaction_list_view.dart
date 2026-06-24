import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/latest_transaction_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widget/latest_transaction_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  final List<LatestTransactionModel> item = const [
    LatestTransactionModel(
      subtitle: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar1,
      title: 'Madrani Andi',
    ),
    LatestTransactionModel(
      subtitle: 'Josh Nunito@gmail.com',
      image: Assets.imagesAvatar2,
      title: 'Josua Nunito',
    ),
    LatestTransactionModel(
      subtitle: 'Josh Nunito@gmail.com',
      image: Assets.imagesAvatar3,
      title: 'Madrani Andi',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: item.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: LatestTransactionListTile(
                latestTransactionModel: item[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
