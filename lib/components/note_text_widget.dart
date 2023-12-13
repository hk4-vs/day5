import 'package:flutter/material.dart';

class NoteTextWidget extends StatelessWidget {
  const NoteTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(
            colors: [Colors.transparent, Colors.black12],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit, mauris eget luctus sodales, mi lorem varius urna, sit amet efficitur nibh enim at nunc. Proin ornare elit id mauris molestie, non vestibulum sem porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent et accumsan odio. Sed non dui mi. Sed nec pellentesque risus",
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 6,
          ),
          Icon(Icons.edit_outlined)
        ],
      ),
    );
  }
}
