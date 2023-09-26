import 'package:flutter/material.dart';
import 'package:flutter_app_islami_c9_sun_3/home/hadeth/hadeth_details_screen.dart';
import 'package:flutter_app_islami_c9_sun_3/home/hadeth/hadeth_tab.dart';
import 'package:flutter_app_islami_c9_sun_3/home/quran/sura_details_screen.dart';

class ItemHadethName extends StatelessWidget {
  Hadeth hadeth ;
  ItemHadethName({required this.hadeth});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadethDetailsScreen.routeName,
          arguments: hadeth
        );
      },
      child: Text(hadeth.title,
      style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
