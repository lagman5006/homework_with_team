import 'package:flutter/material.dart';
import 'package:homework_with_team/extensions/build_text_ext.dart';

import '../utils/app_colors.dart';

class Numbers extends StatelessWidget {
  final int number;
  final String? text;

  const Numbers({super.key, required this.number, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.greyColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          (number == 9 || number == 10 || number == 11)
              ? (number == 9)
                  ? "*".buildText(fontSize: 30)
                  : (number == 10)
                  ? "0".buildText(fontSize: 30)
                  : "#".buildText(fontSize: 30)
              : (number + 1).toString().buildText(fontSize: 25),
          if (text != null) text!.buildText(),
        ],
      ),
    );
  }
}
