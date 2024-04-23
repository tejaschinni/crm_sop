import 'package:crm/features/customer/screens/customer_screen.dart';
import 'package:crm/features/home/screens/home_screen.dart';
import 'package:crm/features/settings_menu/screens/setting_menu.dart';
import 'package:crm/utils/constant.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  Widget? currentScreen;
  bool isMenu = false;
  late AnimationController _animationController;
  late Animation<double> _animateIcon;

  List<Widget> screens = const [
    HomeScreen(),
    CustomerScreen(),
  ];

  void switchScreen() {
    print(_animateIcon.status);
    setState(() {
      if (_animationController.isDismissed) {
        _animationController.forward();
        isMenu = !isMenu;
      } else {
        _animationController.reverse();
        isMenu = !isMenu;
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    currentScreen = screens[0];
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    _animateIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isMenu
          ? AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return SlideTransition(
                  position: animation.drive(Tween(
                          begin: const Offset(0.0, 1.0),
                          end: const Offset(0.0, 0.0))
                      .chain(CurveTween(curve: Curves.easeOut))),
                  child: child,
                );
              },
              child: const SettingMenuScreen(),
            )
          : screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: switchScreen,
        backgroundColor: primaryColor,
        tooltip: 'Add',
        child: AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          color: Colors.white,
          progress: _animateIcon,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
          height: MediaQuery.of(context).size.height * 0.075,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          color: Colors.white,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isMenu = false;
                    currentIndex = 0;
                    currentScreen = screens[0];
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home_filled,
                        size: 30,
                        color: currentIndex == 0 ? primaryColor : Colors.grey),
                    Text(
                      "Home",
                      style: TextStyle(
                          color:
                              currentIndex == 0 ? primaryColor : Colors.black),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isMenu = false;
                    currentIndex = 1;
                    currentScreen = screens[1];
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person,
                        size: 30,
                        color: currentIndex == 1 ? primaryColor : Colors.grey),
                    Text(
                      "Customers",
                      style: TextStyle(
                          color:
                              currentIndex == 1 ? primaryColor : Colors.black),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
