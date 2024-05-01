import 'package:crm/demo/calendar_demo_screen.dart';
import 'package:crm/features/customer/customer_card_widget.dart';
import 'package:crm/features/planned_visits/screens/calender_visit_screen.dart';
import 'package:crm/features/planned_visits/screens/planned_visit_calendarview.dart';
import 'package:crm/features/planned_visits/widgets/planned_visit_card_widget.dart';
import 'package:crm/utils/constant.dart';
import 'package:flutter/material.dart';

class PlannedVisitsScreen extends StatefulWidget {
  const PlannedVisitsScreen({super.key});

  @override
  State<PlannedVisitsScreen> createState() => _PlannedVisitsScreenState();
}

class _PlannedVisitsScreenState extends State<PlannedVisitsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  bool isCalander = false;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: primaryColor,
          toolbarHeight: 50,
          // centerTitle: true,
          title: const Text(
            "Planned Visits",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(
                child: Stack(
                  children: [
                    ClipRRect(
                      // borderRadius: const BorderRadius.only(
                      //   bottomLeft: Radius.circular(30),
                      //   bottomRight: Radius.circular(30),
                      // ),
                      child: Container(
                        color: primaryColor,
                        height: mediaQuery.size.height * 0.12,
                      ),
                    ),
                    Positioned(
                        top: mediaQuery.size.height * 0.02,
                        left: 0,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            // color: Color(0xFFEFF1FE),
                          ),
                          height: mediaQuery.size.height * 0.9,
                          width: mediaQuery.size.width * 1,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: mediaQuery.size.width * 0.9,
                                height: mediaQuery.size.height * 0.07,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.search),
                                    contentPadding: EdgeInsets.all(15),
                                    hintText: 'Search..',
                                    hintStyle: TextStyle(),
                                    border:
                                        InputBorder.none, // Remove the border
                                  ),
                                  // Add your search functionality here
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: SizedBox(
                  height: mediaQuery.size.height * 0.06,
                  child: Card(
                    elevation: 0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isCalander = false;
                                  });
                                },
                                child: Image.asset(
                                  'assets/menu.png',
                                  scale: 3,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  print("calender");
                                  setState(() {
                                    isCalander = true;
                                  });
                                },
                                child: Image.asset(
                                  'assets/Calendar.png',
                                  scale: 3,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: isCalander
                      ? PlannedVisitCalendarViewScreen()
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return PlannedVisitCardWidget();
                              }),
                        )),
            ],
          ),
        ));
  }
}
