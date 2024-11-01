import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/widgets/middle_screen/all_expenses/custom_background_container.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/income_section/income_chart.dart';
import 'income_details.dart';
import 'income_secction_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          SizedBox(
            width: 250,
            child: IncomeChart()),
          IncomeDetails(),
        ],
      ),
    );
  }
}