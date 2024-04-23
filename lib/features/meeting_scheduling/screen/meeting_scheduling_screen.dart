import 'package:crm/features/auth/widgets/auth_botton_widget.dart';
import 'package:crm/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MeetingSchedulingScreen extends StatefulWidget {
  const MeetingSchedulingScreen({super.key});

  @override
  State<MeetingSchedulingScreen> createState() =>
      _MeetingSchedulingScreenState();
}

class _MeetingSchedulingScreenState extends State<MeetingSchedulingScreen> {
  List<String> list = ['Select type', 'Online', 'Offline'];
  String currenttype = 'Select type';
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
        toolbarHeight: 90,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        // centerTitle: true,
        title: const Text(
          "Meeting Scheduling",
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
              height: mediaQuery.size.height * 0.16,
              child: const Card(
                elevation: 05,
                shape: BeveledRectangleBorder(),
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sarjak Container Lines Private Limited",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff045CA6),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Industry name",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff757575)),
                      ),
                      SizedBox(
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
              height: 15,
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                                  'Time',
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
                                      suffixIcon: true
                                          ? GestureDetector(
                                              onTap: () {},
                                              child: const Icon(
                                                  Icons.access_time_rounded),
                                            )
                                          : null,
                                      hintText: '00:00',
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
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: const Text(
                      'Meeting Subject',
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
                          hintText: 'Material Collection',
                          hintStyle:
                              const TextStyle(color: Colors.grey, fontSize: 14),
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: const Text(
                      'Meeting Type',
                      style: TextStyle(
                          color: Color(0xff626468),
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 7),
                      height: 50,
                      width: mediaQuery.size.width * 0.9,
                      // alignment: Alignment.topLeft,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              // width: 0.25,
                              ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: DropdownButtonFormField<String>(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(
                              left: 0,
                              bottom: 15,
                            ),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none)),
                        // alignment: Alignment.center,
                        items: list.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 14)),
                          );
                        }).toList(),
                        value: currenttype,
                        onChanged: (val) {
                          setState(() {
                            currenttype = val.toString();
                          });
                        },
                      ))
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
                              child: Text('Sarjak Contacts'),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  addContactIsVisible = !addContactIsVisible;
                                });
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
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
                            padding: const EdgeInsets.symmetric(horizontal: 12),
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
                            padding: const EdgeInsets.symmetric(horizontal: 12),
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
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isContactVisible = !isContactVisible;
                      });
                    },
                    child: Padding(
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
                                child: Text('Contacts'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Icon(
                                  isContactVisible == true
                                      ? Icons.arrow_drop_up_sharp
                                      : Icons.arrow_drop_down_sharp,
                                  color: primaryColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                      visible: isContactVisible,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          children: [
                            Card(
                              elevation: 2,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Column(
                                children: [
                                  ListView.builder(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemCount: users.length,
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
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Colors.blue.shade600,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        onPressed: () {},
                                        child: Text("Add contact",
                                            style: const TextStyle(
                                              color: Colors.white,
                                            )),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    width: mediaQuery.size.width * 0.5,
                    child: AuthButtonWidget(
                        submitFunction: () {
                          Navigator.pop(context);
                        },
                        title: 'Schedule'),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class User {
  final String name;
  final String email;
  final int number;
  final String position;
  bool isSelected;

  User({
    required this.name,
    required this.email,
    required this.number,
    required this.position,
    this.isSelected = false,
  });
}
