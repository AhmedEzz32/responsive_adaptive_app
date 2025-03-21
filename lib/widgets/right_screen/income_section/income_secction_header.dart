import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/utils/globals.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';
import 'package:responsive_adaptive_app/utils/translation/generated/l10n.dart';
import '../../drawer/range_options.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            S.current.income,
            style: Themes(context).theme.info4.h3Bold,
          ),
          RangeOptions(
            text: () => S.of(cxt).monthly,
          ),
        ],
      ),
    );
  }
}