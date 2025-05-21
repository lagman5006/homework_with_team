import 'package:flutter/material.dart';
import 'package:homework_with_team/extensions/build_text_ext.dart';
import 'package:homework_with_team/pages/numbers.dart';
import 'package:homework_with_team/utils/app_colors.dart';
import 'package:homework_with_team/utils/app_media.dart';

import 'contact_page.dart';

class TypeNumbers extends StatelessWidget {
  final List<String?> text;
  const TypeNumbers({super.key,this.text= const ["ABC","DEF","GHI","JKL","MNO","PORS","TUV","WXYZ",

  ]});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ContactPage()),
          );
        },
        backgroundColor: AppColors.mainColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Icon(Icons.call, color: AppColors.whiteColor),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppMedia.personGirlPath),
            "Emma Wilson".buildText(fontSize: 30),
            "123-456-7890".buildText(fontSize: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 60,
                  mainAxisSpacing: 10,
                ),
                itemCount: 12,
                itemBuilder: (BuildContext context, int index) {
                  return Numbers(

                      number:index ,
                    text: (index == 0 || index == 9  || index == 10 || index == 11 ) ? null : text[index-1]
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
