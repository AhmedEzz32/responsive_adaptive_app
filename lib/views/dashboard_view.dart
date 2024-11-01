import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/views/dashboard_desktop_layout.dart';
import 'package:responsive_adaptive_app/views/dashboard_tablet_layout.dart';
import 'package:responsive_adaptive_app/widgets/drawer/custom_drawer.dart';
import 'adaptive_layout_widget.dart';
import 'dashboard_mobile_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.of(context).size.width < 800
            ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xffFAFAFA),
              leading: IconButton(
                onPressed: () => scaffoldKey.currentState!.openDrawer(),
                icon: const Icon(
                  Icons.menu,
                ),
              ),
            )
            : null,
      drawer: MediaQuery.of(context).size.width < 800 ? const CustomDrawer() : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (BuildContext context) => const DashboardMobileLayout(),
        tabletLayout: (BuildContext context) => const DashboardTabletLayout(),
        desktopLayout: (BuildContext context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
