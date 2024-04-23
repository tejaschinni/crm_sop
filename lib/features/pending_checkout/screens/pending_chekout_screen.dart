import 'package:crm/features/pending_checkout/widgets/pending_card_widget.dart';
import 'package:crm/utils/constant.dart';
import 'package:flutter/material.dart';

class PendingCheckOutScreen extends StatefulWidget {
  const PendingCheckOutScreen({super.key});

  @override
  State<PendingCheckOutScreen> createState() => _PendingCheckOutScreenState();
}

class _PendingCheckOutScreenState extends State<PendingCheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: primaryColor,
          toolbarHeight: 60,
          centerTitle: true,
          title: const Text(
            "Planed Visits",
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
                        height: mediaQuery.size.height * 0.13,
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
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return const PendingCardWidget();
                    }),
              )),
            ],
          ),
        ));
  }
}
