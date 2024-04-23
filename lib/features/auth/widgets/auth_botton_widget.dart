import 'package:flutter/material.dart';

class AuthButtonWidget extends StatelessWidget {
  VoidCallback? submitFunction;
  String title;
  AuthButtonWidget(
      {super.key, required this.submitFunction, required this.title});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.sizeOf(context);
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10)
            .copyWith(
                top: mediaQuery.height * 0.026,
                bottom: mediaQuery.height * 0.023),
        width: mediaQuery.width,
        height: mediaQuery.height * 0.058,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade600,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: submitFunction,
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            )));
  }
}
