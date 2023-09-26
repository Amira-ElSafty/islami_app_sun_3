import 'package:flutter/material.dart';
import 'package:flutter_app_islami_c9_sun_3/home/quran/sura_details_screen.dart';

class ItemSuraDetails extends StatelessWidget {
  String content ;
  int index ;
  ItemSuraDetails({required this.content,required this.index});
  @override
  Widget build(BuildContext context) {
    return Text(
      '$content {${index+1}}',
    style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
