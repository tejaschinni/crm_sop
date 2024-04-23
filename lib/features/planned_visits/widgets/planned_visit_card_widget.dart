import 'package:crm/features/meeting_scheduling/screen/meeting_scheduling_screen.dart';
import 'package:flutter/material.dart';

class PlannedVisitCardWidget extends StatefulWidget {
  const PlannedVisitCardWidget({super.key});

  @override
  State<PlannedVisitCardWidget> createState() => _PlannedVisitCardWidgetState();
}

class _PlannedVisitCardWidgetState extends State<PlannedVisitCardWidget> {
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
                                backgroundColor: const Color(0xff045CA6),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            onPressed: () {
                              print('Reschedule');
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          MeetingSchedulingScreen()));
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  color: Colors.white,
                                  size: 9,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "Reschedule",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 8),
                                ),
                              ],
                            ))),
                    const SizedBox(
                      width: 3,
                    ),
                    SizedBox(
                        width: mediaQuery.size.width * 0.25,
                        height: mediaQuery.size.height * 0.04,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                side: const BorderSide(width: 0.5),
                                backgroundColor: const Color(0xff3F8CFF),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            onPressed: () {
                              print('Attend');
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  color: Colors.white,
                                  size: 9,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Attend",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9),
                                ),
                              ],
                            ))),
                    const SizedBox(
                      width: 3,
                    ),
                    SizedBox(
                        width: mediaQuery.size.width * 0.34,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.calendar_month,
                                  color: Color(0xff2B88B4),
                                  size: 9,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  "Last 3 Visit Reports",
                                  style: TextStyle(
                                      color: const Color(0xff2B88B4),
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.019),
                                ),
                              ],
                            )))
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
