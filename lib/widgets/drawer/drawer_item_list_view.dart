import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/models/drawer_item_model.dart';
import 'package:responsive_adaptive_app/utils/app_images.dart';
import 'package:responsive_adaptive_app/utils/translation/generated/l10n.dart';
import 'drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  
  int selectedIndex = 0;

  final List<DrawerItemModel> items = [
    DrawerItemModel(title: S.current.dashboard, image: Assets.imagesDashboard),
    DrawerItemModel(title: S.current.my_transactions, image: Assets.imagesMyTransaction),
    DrawerItemModel(title: S.current.statistics, image: Assets.imagesStatistics),
    DrawerItemModel(title: S.current.wallet_account, image: Assets.imagesWalletAccount),
    DrawerItemModel(title: S.current.my_investment, image: Assets.imagesMyInvestment),
  ];
  
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) => GestureDetector(
        onTap: (){
          if(selectedIndex != index) {
            setState(() {
              selectedIndex = index;
            });
          }
        },
        child: DrawerItem(
          drawerItemModel: items[index],
          isActive: selectedIndex == index,
        ),
      ),
      separatorBuilder: (BuildContext context, int index)=> const SizedBox(height: 20,),
    );
  }
}