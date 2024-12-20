import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utils/globals.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';
import 'package:responsive_adaptive_app/utils/translation/generated/l10n.dart';
import '../../drawer/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          S.current.all_expenses,
          style: Themes(context).theme.secondry.h2Meduim,
        ),
        RangeOptions(
          text: () => S.of(cxt).monthly,
        ),
      ],
    );
  }
}
