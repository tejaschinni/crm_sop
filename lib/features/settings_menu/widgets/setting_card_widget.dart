import 'package:flutter/material.dart';

class SettingCardWidget extends StatelessWidget {
  String title;
  String image;
  VoidCallback ontapFUnction;
  SettingCardWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.ontapFUnction});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontapFUnction,
      child: SizedBox(
        child: Row(
          children: [
            const SizedBox(width: 10),
            Image.asset(
              image,
              scale: 4,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 18, color: Color(0xff5B5B5B)),
            )
          ],
        ),
      ),
    );
  }
}
