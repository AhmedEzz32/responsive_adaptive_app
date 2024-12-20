import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/models/all_expenses_item_model.dart';
import 'package:responsive_adaptive_app/utils/app_images.dart';
import 'package:responsive_adaptive_app/utils/custom_gesture_detector_widget.dart';
import 'package:responsive_adaptive_app/utils/globals.dart';
import 'package:responsive_adaptive_app/utils/translation/generated/l10n.dart';
import 'package:responsive_adaptive_app/widgets/middle_screen/all_expenses/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {

  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() => _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int selectedIndex = 0;

  List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      image: Assets.imagesBalance, 
      title: () => S.current.balance,
      date: () => S.of(cxt).augest_2024, 
      price: () => S.of(cxt).dollar_20_129,
    ),
    AllExpensesItemModel(
      image: Assets.imagesCardReceive, 
      title: () => S.of(cxt).income, 
      date: () => S.of(cxt).augest_2024,
      price: () => S.of(cxt).dollar_20_129,
    ),
    AllExpensesItemModel(
      image: Assets.imagesCardSend, 
      title: ()=> S.of(cxt).expenses, 
      date: () => S.of(cxt).augest_2024,
      price: () => S.of(cxt).dollar_20_129,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items.map((e) => Expanded(child: AllExpensesItem(itemModel: e))).toList(),
      children: items.asMap().entries.map((e){
        int index = e.key;
        var item = e.value;

        return Flexible(
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.01),
            child: CustomGestureDetectorWidget(
              onTap: (){
                if(selectedIndex != index) {
                  setState(() {
                    selectedIndex = index;
                  });
                }
              },
              child: AllExpensesItem(
                itemModel: item,
                isSelected: selectedIndex == index,
              )
            ),
          )
        );
      }).toList(),
    );
  }
}