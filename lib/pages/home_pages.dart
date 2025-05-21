import 'package:flutter/material.dart';
import 'package:homework_with_team/extensions/build_container_ext.dart';
import 'package:homework_with_team/extensions/build_text_ext.dart';
import 'package:homework_with_team/extensions/mediaqueryExt.dart';
import 'package:homework_with_team/pages/contact_page.dart';
import 'package:homework_with_team/pages/typenumbers_page.dart';
import 'package:homework_with_team/utils/app_colors.dart';
import 'package:homework_with_team/utils/app_media.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: SafeArea(
          child: Row(
            children: [
              Text("Contacts"),
              Spacer(),
              Icon(Icons.more_vert_outlined),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ContactPage()),
          );
        },
        backgroundColor: AppColors.mainColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Icon(Icons.add, color: AppColors.whiteColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            spacing: 10,
            children: [
              Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.search_outlined),
                  SizedBox(width: 10),
                  "Search".buildText(),
                ],
              ).buildContainer(
                borderRadius: 10,
                color: AppColors.greyColor.withOpacity(0.2),
                width: context.width * 0.95,
                height: context.height * 0.065,
              ),
              Row(children: ["FAVORITES".buildText()]),
              rows(AppMedia.personGirlPath, "Emma Wilson"),
              Row(children: [SizedBox(width: 15), "A".buildText()]),
              rows(AppMedia.personManPath, "Albert Clark", "Friend"),
              rows(AppMedia.personGirlPath, "Anna Kim", "Classmate"),
              rows(AppMedia.personManPath, "Jacob Wong", "Teacher"),
              rows(AppMedia.personGirlPath, "Jacob Wong"),
              rows(AppMedia.personManPath, "Jessica Chen"),
              rows(AppMedia.personGirlPath, "Olivia Munoz"),
              rows(AppMedia.personManPath, "Samuel Green"),
            ],
          ),
        ),
      ),
    );
  }
}

Row rows(String person, String text, [String? containerText]) {
  return Row(
    spacing: 10,
    children: [
      Image.asset(person, width: 40, height: 40),
      text.buildText(),
      Spacer(),
      if (containerText != null)
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColors.mainColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(containerText),
        ),
    ],
  );
}
