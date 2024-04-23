import 'package:crm/features/addNewCutomer/screens/add_new_screen.dart';
import 'package:crm/features/auth/widgets/auth_botton_widget.dart';
import 'package:crm/features/meeting_scheduling/screen/meeting_scheduling_screen.dart';
import 'package:crm/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VisitDataScreen extends StatefulWidget {
  const VisitDataScreen({super.key});

  @override
  State<VisitDataScreen> createState() => _VisitDataScreenState();
}

class _VisitDataScreenState extends State<VisitDataScreen> {
  bool addContactIsVisible = false;
  bool isContactVisible = false;
  List<User> users = [
    User(
        name: 'John Doe',
        email: 'john@example.com',
        number: 7777777777,
        position: 'IT'),
    User(
        name: 'Jane Smith',
        email: 'jane@example.com',
        number: 9999999999,
        position: 'Sales'),
    User(
        name: 'Alice Johnson',
        email: 'alice@example.com',
        number: 8888888888,
        position: 'Marketing'),
  ];
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
            "Visit data",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: mediaQuery.size.height * 0.01,
                ),
                SizedBox(
                  height: mediaQuery.size.height * 0.16,
                  child: Card(
                    elevation: 05,
                    shape: const BeveledRectangleBorder(),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Sarjak Container Lines Private Limited",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff045CA6),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                SizedBox(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/Calendar.png',
                                        scale: 3,
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      const Text(
                                        "28/03/24",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff757575)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: mediaQuery.size.width * 0.06,
                                ),
                                SizedBox(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/Time Circle.png',
                                        scale: 3,
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      const Text(
                                        "09:30",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff757575)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "+919999999999",
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xff6B6B6B)),
                                ),
                                Text(
                                  "example@gmail.com",
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xff6B6B6B)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: const Text(
                          'Meeting Date',
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
                              suffixIcon: false
                                  ? GestureDetector(
                                      onTap: () {},
                                      child: const Icon(
                                          Icons.calendar_month_rounded),
                                    )
                                  : null,
                              hintText: 'CRM Support',
                              hintStyle: const TextStyle(
                                  color: Colors.grey, fontSize: 14),
                              border: const OutlineInputBorder()),
                          controller: TextEditingController(),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Visibility(
                          visible: true,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Card(
                              elevation: 2,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      child: Text('Contacts'),
                                    ),
                                  ),
                                  ListView.builder(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemCount: 1,
                                      itemBuilder: (context, index) {
                                        return ListTile(
                                          titleTextStyle: const TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff515151)),
                                          leadingAndTrailingTextStyle:
                                              const TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xff515151)),
                                          leading: Checkbox(
                                            activeColor: primaryColor,
                                            value: users[index].isSelected,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                users[index].isSelected =
                                                    value!;
                                              });
                                            },
                                          ),
                                          title: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                users[index].name,
                                              ),
                                              Text(
                                                users[index].email,
                                              ),
                                            ],
                                          ),
                                          trailing: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(users[index]
                                                  .number
                                                  .toString()),
                                              Text(users[index].position),
                                            ],
                                          ),
                                        );
                                      }),
                                ],
                              ),
                            ),
                          )),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7.5),
                        child: SizedBox(
                          height: mediaQuery.size.height * 0.065,
                          child: Card(
                            elevation: 2,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Text('Add Other Contacts'),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      addContactIsVisible =
                                          !addContactIsVisible;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Icon(
                                      Icons.add_box_rounded,
                                      color: primaryColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                          visible: addContactIsVisible,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: const Text(
                                  'Name',
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
                                child: TextFormField(
                                  textAlign: TextAlign.justify,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                      suffixIcon: false
                                          ? GestureDetector(
                                              onTap: () {},
                                              child: const Icon(Icons.abc),
                                            )
                                          : null,
                                      hintText: 'Name',
                                      hintStyle: const TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                      border: const OutlineInputBorder()),
                                  controller: TextEditingController(),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: const Text(
                                  'Email Id',
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
                                child: TextFormField(
                                  textAlign: TextAlign.justify,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                      suffixIcon: false
                                          ? GestureDetector(
                                              onTap: () {},
                                              child: const Icon(Icons.abc),
                                            )
                                          : null,
                                      hintText: 'example@gmail.com',
                                      hintStyle: const TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                      border: const OutlineInputBorder()),
                                  controller: TextEditingController(),
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: const Text(
                          'Visit Summary',
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
                        // height: 70,
                        // width: 100,
                        child: TextFormField(
                          textAlign: TextAlign.justify,
                          obscureText: false,
                          maxLines: 3,
                          decoration: InputDecoration(
                              suffixIcon: false
                                  ? GestureDetector(
                                      onTap: () {},
                                      child: const Icon(
                                          Icons.calendar_month_rounded),
                                    )
                                  : null,
                              hintText: 'CRM Support',
                              hintStyle: const TextStyle(
                                  color: Colors.grey, fontSize: 14),
                              border: const OutlineInputBorder()),
                          controller: TextEditingController(),
                        ),
                      )
                    ],
                  ),
                ),
                // CustomTextFieldWidget(
                //     controller: TextEditingController(),
                //     showIcon: false,
                //     title: 'Name',
                //     hinttext: 'Name',
                //     isObscureText: false,
                //     visibleFUnction: () {},
                //     iconData: Icons.abc),
                // CustomTextFieldWidget(
                //     controller: TextEditingController(),
                //     showIcon: false,
                //     title: 'Industry Name',
                //     hinttext: 'IT',
                //     isObscureText: false,
                //     visibleFUnction: () {},
                //     iconData: Icons.abc),
                // CustomTextFieldWidget(
                //     controller: TextEditingController(),
                //     showIcon: false,
                //     title: 'Email Id',
                //     hinttext: 'exammple@gmail.com',
                //     isObscureText: false,
                //     visibleFUnction: () {},
                //     iconData: Icons.abc),
                // CustomTextFieldWidget(
                //     controller: TextEditingController(),
                //     showIcon: false,
                //     title: 'Contant N0',
                //     hinttext: '9999999999',
                //     isObscureText: false,
                //     visibleFUnction: () {},
                //     iconData: Icons.abc),
                // AuthButtonWidget(
                //     submitFunction: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) =>
                //                   const MeetingSchedulingScreen()));
                //     },
                //     title: 'Save')
              ],
            ),
          ),
        ));
  }
}
