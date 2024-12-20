import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/utils/globals.dart';
import 'package:responsive_adaptive_app/utils/theme/themes.dart';
import 'package:responsive_adaptive_app/utils/translation/generated/l10n.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/mycard/dot_indicator.dart';
import 'package:responsive_adaptive_app/widgets/right_screen/mycard/my_card_page_view.dart';

class CardViewSection extends StatefulWidget {
  const CardViewSection({super.key});

  @override
  State<CardViewSection> createState() => _CardViewSectionState();
}

class _CardViewSectionState extends State<CardViewSection> {

  late PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(); 
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 320,
          child: Text(
            S.of(cxt).my_card,
            style: Themes(context).theme.info4.h4Bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        MyCardPageView(pageController: pageController),
        const SizedBox(
          height: 10,
        ),
        DotIndicator(currentIndexPage: currentPage)
      ],
    );
  }
}