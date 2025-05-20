import 'package:flutter/material.dart';
import 'package:homework_with_team/extensions/build_container_ext.dart';
import 'package:homework_with_team/extensions/build_text_ext.dart';
import 'package:homework_with_team/extensions/mediaqueryExt.dart';
import 'package:homework_with_team/utils/app_colors.dart';
import 'package:homework_with_team/utils/app_media.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            spacing: 10,
            children: [
              Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.search_outlined),
                  SizedBox(width: 10),
                  "Search".buildText(),
                ],
              ).buildContainer(
                borderRadius: 10,
                color: AppColors.greyColor.withOpacity(0.3),
                height: context.height * 0.06,
                width: context.width * 0.96,
              ),
              Row(
                children: [
                  "FOVORITES".buildText(),
                  Row(
                    children: [
                      Image.asset(AppMedia.personGirlPath)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
