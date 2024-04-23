import 'package:crm/features/auth/widgets/auth_botton_widget.dart';
import 'package:crm/features/auth/widgets/auth_texfield_widgets.dart';
import 'package:crm/widgets/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isShow = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/Sarjak Logo New.png'),
              const SizedBox(
                height: 20,
              ),
              Form(
                  child: Column(
                children: [
                  const Text(
                    "Please sign in to continue",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        decorationStyle: TextDecorationStyle.double,
                        decorationThickness: 3),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AuthTextFieldWidget(
                    title: 'Email Address',
                    hinttext: 'Email',
                    controller: emailController,
                    showIcon: false,
                    isObscureText: false,
                    iconData: Icons.abc_outlined,
                    visibleFUnction: () {},
                  ),
                  AuthTextFieldWidget(
                    title: 'Password',
                    hinttext: 'Password',
                    controller: passwordController,
                    showIcon: true,
                    isObscureText: !isShow,
                    iconData: isShow ? Icons.visibility_off : Icons.visibility,
                    visibleFUnction: () {
                      setState(() {
                        isShow = !isShow;
                      });
                    },
                  ),
                  AuthButtonWidget(
                    title: 'Login',
                    submitFunction: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const BottomNavigationWidget()));
                    },
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
