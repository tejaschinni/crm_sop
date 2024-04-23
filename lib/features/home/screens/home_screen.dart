import 'package:crm/features/home/widgets/home_card_widget.dart';
import 'package:crm/features/pending_checkout/screens/pending_chekout_screen.dart';
import 'package:crm/features/planned_visits/screens/planned_visits_screen.dart';
import 'package:crm/features/visit_report/screen/visit_data_screen.dart';
import 'package:crm/features/visit_report/screen/visit_report_screen.dart';
import 'package:crm/utils/constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue.shade50,
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: primaryColor,
        toolbarHeight: 110,
        title: const Text(
          "Welcome, Ritik",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.blue.shade50),
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeCardWidget(
                  title: "Customers",
                  iconWidget: Image.asset(
                    "assets/user.png",
                    scale: 4,
                  ),
                  ontapFunction: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PendingCheckOutScreen()));
                  }),
              const SizedBox(
                height: 10,
              ),
              HomeCardWidget(
                  title: "Planned Visits",
                  iconWidget: Image.asset(
                    "assets/Location.png",
                    scale: 4,
                  ),
                  ontapFunction: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PlannedVisitsScreen()));
                  }),
              const SizedBox(
                height: 10,
              ),
              HomeCardWidget(
                  title: "Visit Reports",
                  iconWidget: Image.asset(
                    "assets/Paper.png",
                    scale: 4,
                  ),
                  ontapFunction: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VisitReportScreen()));
                  }),
              const SizedBox(
                height: 10,
              ),
              HomeCardWidget(
                  title: "Statistics",
                  iconWidget: Image.asset(
                    "assets/Activity.png",
                    scale: 4,
                  ),
                  ontapFunction: () {}),
              const SizedBox(
                height: 10,
              ),
              HomeCardWidget(
                  title: "Grievances",
                  iconWidget: Image.asset(
                    "assets/Chat.png",
                    scale: 4,
                  ),
                  ontapFunction: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
