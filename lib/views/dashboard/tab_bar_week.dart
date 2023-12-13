import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/note_text_widget.dart';

class TabbarWeek extends StatelessWidget {
  const TabbarWeek({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Your Progress",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Review",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Note",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const NoteTextWidget(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Performance",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.amber,
                      size: 30,
                    ),
                    Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.amber,
                      size: 30,
                    ),
                    Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.amber,
                      size: 30,
                    ),
                    Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.amber,
                      size: 30,
                    ),
                    Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.black12,
                      size: 30,
                    )
                  ],
                ),
                Image.asset(
                  "assets/images/illustration_2.png",
                  height: 80,
                )
              ],
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
