import 'package:flutter/material.dart';
import 'package:homework_with_team/extensions/build_container_ext.dart';
import 'package:homework_with_team/extensions/build_text_ext.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Contacts"),
            Spacer(),
            Icon(Icons.more_vert_outlined),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.search_outlined),
                "Search".buildText(),
              ],
            ).buildContainer(width: )
          ],
        ),
      ),
    );
  }
}
