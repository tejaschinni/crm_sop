import 'package:crm/features/addNewCutomer/screens/add_new_screen.dart';
import 'package:crm/features/customer/customer_card_widget.dart';
import 'package:crm/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: primaryColor,
          toolbarHeight: 50,
          title: const Text(
            "Customer",
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
                              Row(
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
                                        border: InputBorder
                                            .none, // Remove the border
                                      ),
                                      // Add your search functionality here
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.symmetric(
                                  //       horizontal: 4),
                                  //   child: SizedBox(
                                  //     width: mediaQuery.size.width * 0.15,
                                  //     child: ElevatedButton(
                                  //         style: ElevatedButton.styleFrom(
                                  //             shape:
                                  //                 const BeveledRectangleBorder(),
                                  //             backgroundColor: Colors.white),
                                  //         onPressed: () {
                                  //           Navigator.push(
                                  //               context,
                                  //               MaterialPageRoute(
                                  //                   builder: (context) =>
                                  //                       const AddNewScreen()));
                                  //         },
                                  //         child: const Text(
                                  //           "+",
                                  //           style:
                                  //               TextStyle(color: Colors.b),
                                  //         )),
                                  //   ),
                                  // )
                                ],
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.02,
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: mediaQuery.size.height * 0.09,
                  child: Card(
                    elevation: 10,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: const BeveledRectangleBorder(),
                                  backgroundColor: primaryColor),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AddNewScreen()));
                              },
                              child: const Text(
                                "Add New +",
                                style: TextStyle(color: Colors.white),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return CustomerCardWidget();
                    }),
              )),
            ],
          ),
        ));
  }
}
