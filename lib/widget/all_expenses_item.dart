import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isSelected,
  });
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveExpensesItem(allExpensesItemModel: allExpensesItemModel)
        : InActiveExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageColor,
    this.imageBackgroundColor,
    this.iconColor,
  });
  final String image;
  final Color? imageColor, imageBackgroundColor, iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  shape: OvalBorder(),
                  color: imageBackgroundColor ?? Color(0xffFAFAFA),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      imageColor ?? Color(0xff4EB7F2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(child: SizedBox()),
        Transform.rotate(
          angle: -1.5708 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: iconColor ?? Color(0xFF064061),
          ),
        ),
      ],
    );
  }
}

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({super.key, required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(image: allExpensesItemModel.image),
            const SizedBox(height: 34),
            FittedBox(
              fit: BoxFit.scaleDown,

              child: Text(
                allExpensesItemModel.title,
                style: AppStyles.styleSemiBold16(context),
              ),
            ),
            const SizedBox(height: 8),
            FittedBox(
              fit: BoxFit.scaleDown,

              child: Text(
                allExpensesItemModel.date,
                style: AppStyles.styleRegular14(context),
              ),
            ),
            const SizedBox(height: 16),
            FittedBox(
              fit: BoxFit.scaleDown,

              child: Text(
                (allExpensesItemModel.price).toString(),
                style: AppStyles.styleSemiBold24(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({super.key, required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Color(0xff4DB7F2),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xff4DB7F2)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              imageBackgroundColor: Colors.white.withValues(
                alpha: 0.10000000149011612,
              ),
              imageColor: Colors.white,
              iconColor: Colors.white,
              image: allExpensesItemModel.image,
            ),
            const SizedBox(height: 34),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                allExpensesItemModel.title,
                style: AppStyles.styleSemiBold16(
                  context,
                ).copyWith(color: Color(0xffffffff)),
              ),
            ),
            const SizedBox(height: 8),
            FittedBox(
              fit: BoxFit.scaleDown,

              child: Text(
                allExpensesItemModel.date,
                style: AppStyles.styleRegular14(
                  context,
                ).copyWith(color: Color(0xffFAFAFA)),
              ),
            ),
            const SizedBox(height: 16),
            FittedBox(
              fit: BoxFit.scaleDown,

              child: Text(
                (allExpensesItemModel.price).toString(),
                style: AppStyles.styleSemiBold24(
                  context,
                ).copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
