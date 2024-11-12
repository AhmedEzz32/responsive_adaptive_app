import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/core/l10n/generated/l10n.dart';
import 'package:responsive_adaptive_app/utils/services/settings_service.dart';
import 'package:responsive_adaptive_app/utils/services/storage_service.dart';
import 'views/dashboard_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageService().initialize();
  await SettingService().initialize();
  runApp(const ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: SettingService().language.locale,
      localizationsDelegates: const [
        S.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      home: DashBoardView(),
    );
  }
}
