import 'package:crm/features/auth/widgets/auth_botton_widget.dart';
import 'package:crm/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VisitReportScreen extends StatefulWidget {
  const VisitReportScreen({super.key});

  @override
  State<VisitReportScreen> createState() => _VisitReportScreenState();
}

class _VisitReportScreenState extends State<VisitReportScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actionsIconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: primaryColor,
        toolbarHeight: 110,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Visit Reports",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: mediaQuery.size.height * 0.01,
              ),
              SizedBox(
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: const Text(
                                'To',
                                style: TextStyle(
                                    color: Color(0xff626468),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              height: 70,
                              // width: 100,
                              child: TextFormField(
                                textAlign: TextAlign.justify,
                                obscureText: false,
                                decoration: InputDecoration(
                                    suffixIcon: true
                                        ? GestureDetector(
                                            onTap: () {},
                                            child: const Icon(
                                                Icons.calendar_month_rounded),
                                          )
                                        : null,
                                    hintText: '02/02/2000',
                                    hintStyle: const TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                    border: const OutlineInputBorder()),
                                controller: TextEditingController(),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: const Text(
                                'From',
                                style: TextStyle(
                                    color: Color(0xff626468),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              height: 70,
                              // width: 100,
                              child: TextFormField(
                                textAlign: TextAlign.justify,
                                obscureText: false,
                                decoration: InputDecoration(
                                    suffixIcon: true
                                        ? GestureDetector(
                                            onTap: () {},
                                            child: const Icon(
                                                Icons.calendar_month_rounded),
                                          )
                                        : null,
                                    hintText: '02/02/2000',
                                    hintStyle: const TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                    border: const OutlineInputBorder()),
                                controller: TextEditingController(),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              AuthButtonWidget(
                title: 'Search',
                submitFunction: () {},
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          print('Grievance');
                        },
                        child: const Text(
                          "data.xlxs",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 12,
                              color: Colors.blue),
                        ),
                      ),
                      Container(
                        width: 20,
                        decoration: BoxDecoration(
                            color: Color(0xff045CA6),
                            borderRadius: BorderRadius.circular(3)),
                        child: InkWell(
                          onTap: () {
                            print('Grievance');
                          },
                          child: Image.asset(
                            'assets/Downlaod.png',
                            scale: 4.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
