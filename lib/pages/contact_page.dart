import 'package:flutter/material.dart';
import 'package:homework_with_team/extensions/build_text_ext.dart';
import 'package:homework_with_team/extensions/sized_box_ext.dart';
import 'package:homework_with_team/utils/app_media.dart';

class ContactPage extends StatelessWidget {
  ContactPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: "Charlotte Diaz".buildText(fontSize: 17, fontWeight: "w600"),
        actions: [Icon(Icons.edit), 15.w],
      ),
      body: Column(children: [Image.asset(AppMedia.personGirlPath)]),
    );
  }
}
