import 'package:crm/features/settings_menu/widgets/setting_card_widget.dart';
import 'package:flutter/material.dart';

class SettingMenuScreen extends StatefulWidget {
  const SettingMenuScreen({super.key});

  @override
  State<SettingMenuScreen> createState() => _SettingMenuScreenState();
}

class _SettingMenuScreenState extends State<SettingMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFF1FE),
      // appBar: AppBar(
      //   title: Text("data"),
      // ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.025,
                    top: MediaQuery.of(context).size.height * 0.07),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    // if (imagePath != null &&
                    //     imagePath!.isNotEmpty &&
                    //     state.profileTextModel!.text.isNotEmpty)
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/placeholder.png'),
                      // child: ,
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rikit',
                          style: TextStyle(),
                        ),
                        Text(
                          'email@gmail.com',
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SettingCardWidget(
                  image: "assets/user.png",
                  title: 'Customers',
                  ontapFUnction: () {}),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              SettingCardWidget(
                  image: "assets/Location.png",
                  title: 'Planned Visits',
                  ontapFUnction: () {}),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              SettingCardWidget(
                  image: "assets/Paper.png",
                  title: 'Pending Checkout',
                  ontapFUnction: () {}),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              SettingCardWidget(
                  image: "assets/Paper.png",
                  title: 'Visit Reports',
                  ontapFUnction: () {}),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              SettingCardWidget(
                  image: "assets/Activity.png",
                  title: 'Statistics',
                  ontapFUnction: () {}),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              SettingCardWidget(
                  image: "assets/Chat.png",
                  title: 'Grievances',
                  ontapFUnction: () {}),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              SettingCardWidget(
                  image: "assets/logout.png",
                  title: 'Logout',
                  ontapFUnction: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
