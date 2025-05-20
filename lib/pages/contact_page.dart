import 'package:flutter/material.dart';
import 'package:homework_with_team/extensions/build_container_ext.dart';
import 'package:homework_with_team/extensions/build_text_ext.dart';
import 'package:homework_with_team/extensions/sized_box_ext.dart';
import 'package:homework_with_team/utils/app_colors.dart';
import 'package:homework_with_team/utils/app_media.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.greyColor,
      body: SafeArea(
        child: Column(
          children: [
            FirstContainer().buildContainer(
              width: width * 0.9,
              height: height * 0.4,
              borderRadius: 15,
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
            ),
            30.h,
            SecondContainer().buildContainer(
              width: width * 0.9,
              height: height * 0.45,
              borderRadius: 15,
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstContainer extends StatelessWidget {
  const FirstContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 38),
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
          30.h,
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
          40.h,
          BuildRow(icon: Icon(Icons.phone), text: "123-456-7890"),
          33.h,
          BuildRow(icon: Icon(Icons.email), text: "charlotte.diaz@example.com"),
        ],
      ),
    );
  }
}

class SecondContainer extends StatelessWidget {
  const SecondContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 44),
      child: Column(
        children: [
          Row(
            children: [
              "J".buildText(fontSize: 25, fontWeight: "w700"),
              25.w,
              " Jacob Wong".buildText(fontSize: 25, fontWeight: "w600"),
              Spacer(),
              Image.asset(AppMedia.personGirlPath, width: 55, height: 55),
            ],
          ),
          45.h,
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AppMedia.personGirlPath, width: 35, height: 35),
              15.w,
              "123-456-7890".buildText(fontSize: 22, fontWeight: "w500"),
            ],
          ),
          45.h,
          BuildRow(icon: Icon(Icons.phone), text: "Charlotte.diaz@example.com"),
          45.h,
          BuildRow(icon: Icon(Icons.email_outlined), text: ""),
          Padding(
            padding: EdgeInsets.only(left: 250),
            child: "+"
                .buildText(fontSize: 35, color: AppColors.whiteColor)
                .buildContainer(
                  width: 65,
                  height: 65,
                  borderRadius: 38,
                  color: AppColors.mainColor,
                ),
          ),
        ],
      ),
    );
  }
}

class BuildRow extends StatelessWidget {
  final Widget icon;
  final String text;
  const BuildRow({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(children: [icon, 25.w, text.buildText(fontSize: 20)]);
  }
}
