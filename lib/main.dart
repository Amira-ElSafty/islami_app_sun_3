import 'package:flutter/material.dart';
import 'package:flutter_app_islami_c9_sun_3/home/hadeth/hadeth_details_screen.dart';
import 'package:flutter_app_islami_c9_sun_3/home/home_screen.dart';
import 'package:flutter_app_islami_c9_sun_3/home/quran/sura_details_screen.dart';
import 'package:flutter_app_islami_c9_sun_3/my_theme.dart';
import 'package:flutter_app_islami_c9_sun_3/providers/app_config_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main(){
  runApp(ChangeNotifierProvider(
    create: ((context) => AppConfigProvider()),
      child: MyApp()));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => HomeScreen(),
        SuraDetailsScreen.routeName : (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName : (context) => HadethDetailsScreen(),
      },
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: provider.appTheme,
      locale: Locale(provider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
