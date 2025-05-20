import 'package:flutter/material.dart';
import 'package:homework_with_team/extensions/build_container_ext.dart';
import 'package:homework_with_team/extensions/build_text_ext.dart';
import 'package:homework_with_team/extensions/sized_box_ext.dart';
import 'package:homework_with_team/utils/app_colors.dart';
import 'package:homework_with_team/utils/app_media.dart';

class ContactPage extends StatelessWidget {
  ContactPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back),
                  25.w,
                  "Charlotte Diaz".buildText(fontSize: 25, fontWeight: "w600"),
                  Spacer(),
                  Icon(Icons.edit),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  65.w,
                  Image.asset(AppMedia.personGirlPath),
                  15.w,
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: "Friend"
                        .buildText(color: AppColors.whiteColor, fontSize: 19)
                        .buildContainer(
                          height: 30,
                          color: AppColors.mainColor,
                          borderRadius: 17,
                        ),
                  ),
                ],
              ),
              20.h,
              BuildRow(),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildRow extends StatelessWidget {
  const BuildRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.phone),
        25.w,
        "123-456-7890".buildText(fontSize: 18),
      ],
    );
  }
}
