import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/styles.dart';
import '../../drawer/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'all expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const RangeOptions(
          text: 'Monthly',
        ),
      ],
    );
  }
}
