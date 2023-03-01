import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class ColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String upper;
  final String lower;
  final bool? isColor;
  const ColumnLayout({Key? key, required this.upper, required this.lower, required this.alignment, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(upper, style: isColor==null? Styles.headerStyle3.copyWith(color: Colors.white):Styles.headerStyle3.copyWith(color: Colors.black),),
        Gap(AppLayout.getHeight(6)),
        Text(lower,style: isColor==null? Styles.headerStyle4.copyWith(color: Colors.white): Styles.headerStyle4,),
      ],
    );
  }
}
