import 'package:flutter/material.dart';

class AuthTextFieldWidget extends StatelessWidget {
  TextEditingController controller;
  String title;
  String hinttext;
  bool showIcon;
  bool isObscureText;
  VoidCallback? visibleFUnction;
  IconData iconData;
  AuthTextFieldWidget(
      {super.key,
      required this.controller,
      required this.showIcon,
      required this.title,
      required this.hinttext,
      required this.isObscureText,
      required this.visibleFUnction,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
            textAlign: TextAlign.start,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: TextFormField(
            obscureText: isObscureText,
            decoration: InputDecoration(
                suffixIcon: showIcon
                    ? GestureDetector(
                        onTap: visibleFUnction,
                        child: Icon(iconData),
                      )
                    : null,
                hintText: hinttext,
                hintStyle: const TextStyle(color: Colors.grey),
                border: const OutlineInputBorder()),
            controller: controller,
          ),
        )
      ],
    );
  }
}
