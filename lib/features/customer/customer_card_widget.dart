import 'package:crm/features/meeting_scheduling/screen/meeting_scheduling_screen.dart';
import 'package:flutter/material.dart';

class CustomerCardWidget extends StatelessWidget {
  const CustomerCardWidget({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sarjak Container Lines Private Limited",
                style: TextStyle(fontSize: 16, color: Color(0xff263257)),
              ),
              const Text(
                "Industry name",
                style: TextStyle(fontSize: 12, color: Color(0xff757575)),
              ),
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
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                          // width: mediaQuery.size.width * 0.85,
                          height: mediaQuery.size.height * 0.04,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue.shade600,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MeetingSchedulingScreen()));
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Schedule A Meeting",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 9),
                                  ),
                                ],
                              ))),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                          // width: mediaQuery.size.width * 0.85,
                          height: mediaQuery.size.height * 0.04,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  side: const BorderSide(width: 0.5),
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                              onPressed: () {
                                print('Last 3 Visit Reports');
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: Color(0xff2B88B4),
                                    size: 10,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Last 3 Visit Reports",
                                    style: TextStyle(
                                        color: Color(0xff2B88B4), fontSize: 9),
                                  ),
                                ],
                              ))),
                    )
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
