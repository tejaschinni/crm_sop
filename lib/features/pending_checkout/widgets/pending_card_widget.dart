import 'package:flutter/material.dart';

class PendingCardWidget extends StatefulWidget {
  const PendingCardWidget({super.key});

  @override
  State<PendingCardWidget> createState() => _PendingCardWidgetState();
}

class _PendingCardWidgetState extends State<PendingCardWidget> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return SizedBox(
      height: mediaQuery.size.height * 0.25,
      child: Card(
        elevation: 10,
        shape: const BeveledRectangleBorder(),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sarjak Container Lines Private Limited",
                style: TextStyle(fontSize: 16, color: Color(0xff045CA6)),
              ),
              const Text(
                "Industry name",
                style: TextStyle(fontSize: 12, color: Color(0xff757575)),
              ),
              const SizedBox(
                  child: Text(
                "06-April-2024 | 10:30 AM",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff757575)),
              )),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/Calling.png',
                          scale: 5,
                        ),
                        const SizedBox(
                          width: 4.5,
                        ),
                        const Text(
                          "+919999999999",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff6B6B6B)),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        print('Grievance');
                      },
                      child: const Text(
                        "Grievance",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 12,
                            color: Colors.blue),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/Message.png',
                          scale: 5,
                        ),
                        const SizedBox(
                          width: 4.5,
                        ),
                        const Text(
                          "example@gmail.com",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff6B6B6B)),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        print('Statistics');
                      },
                      child: const Text(
                        "Statistics",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 12,
                            color: Colors.blue),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: mediaQuery.size.width * 0.28,
                        height: mediaQuery.size.height * 0.04,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffba3F8CFF),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            onPressed: () {
                              print('Reschedule');
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Complete",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9),
                                ),
                              ],
                            ))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
