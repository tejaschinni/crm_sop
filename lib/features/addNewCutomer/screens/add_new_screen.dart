import 'package:crm/features/auth/widgets/auth_botton_widget.dart';
import 'package:crm/features/meeting_scheduling/screen/meeting_scheduling_screen.dart';
import 'package:crm/utils/constant.dart';
import 'package:flutter/material.dart';

import '../../../utils/comma_widgets/custom_textfield_widget.dart';

class AddNewScreen extends StatefulWidget {
  const AddNewScreen({super.key});

  @override
  State<AddNewScreen> createState() => _AddNewScreenState();
}

class _AddNewScreenState extends State<AddNewScreen> {
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
            "Add New Customer",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: mediaQuery.size.height * 0.05,
              ),
              CustomTextFieldWidget(
                  controller: TextEditingController(),
                  showIcon: false,
                  title: 'Name',
                  hinttext: 'Name',
                  isObscureText: false,
                  visibleFUnction: () {},
                  iconData: Icons.abc),
              CustomTextFieldWidget(
                  controller: TextEditingController(),
                  showIcon: false,
                  title: 'Industry Name',
                  hinttext: 'IT',
                  isObscureText: false,
                  visibleFUnction: () {},
                  iconData: Icons.abc),
              CustomTextFieldWidget(
                  controller: TextEditingController(),
                  showIcon: false,
                  title: 'Email Id',
                  hinttext: 'exammple@gmail.com',
                  isObscureText: false,
                  visibleFUnction: () {},
                  iconData: Icons.abc),
              CustomTextFieldWidget(
                  controller: TextEditingController(),
                  showIcon: false,
                  title: 'Contant N0',
                  hinttext: '9999999999',
                  isObscureText: false,
                  visibleFUnction: () {},
                  iconData: Icons.abc),
              AuthButtonWidget(
                  submitFunction: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const MeetingSchedulingScreen()));
                  },
                  title: 'Save')
            ],
          ),
        ));
  }
}
