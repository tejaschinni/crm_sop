import 'package:flutter/material.dart';

class HomeCardWidget extends StatelessWidget {
  String title;
  Widget iconWidget;
  VoidCallback? ontapFunction;
  HomeCardWidget(
      {super.key,
      required this.title,
      required this.iconWidget,
      required this.ontapFunction});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return GestureDetector(
      onTap: ontapFunction,
      child: Card(
        elevation: 10,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          // padding: EdgeInsets.symmetric(horizontal: 10),
          height: mediaQuery.size.height * 0.08,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: mediaQuery.size.height * 0.08,
                width: mediaQuery.size.width * 0.29,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(90),
                        bottomRight: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: iconWidget,
              )
            ],
          ),
        ),
      ),
    );
  }
}
