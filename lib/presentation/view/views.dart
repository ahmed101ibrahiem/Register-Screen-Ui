import 'package:flutter/material.dart';
import 'package:register_scree/constant.dart';

import '../widget/clipper_widget.dart';
import '../widget/text_form_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double heightDevice = MediaQuery.of(context).size.height;
    double widthDevice = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipPath(
              clipper: MyCustomClipper(),
              child: Container(
                // width: double.infinity,
                decoration: const BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.topCenter, colors: [
                  prColor,
                  prColor
                  // Color.fromARGB(255, 18, 4, 211),
                ])),
                height: heightDevice / 3,
                // width: double.infinity,
                child: const Center(
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24),
              child: Column(
                children: [
                  CustomTextField(
                    label: 'Email',
                    keyboaredTybe: TextInputType.emailAddress,
                    iconData: Icons.email,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                      label: 'Full name',
                      keyboaredTybe: TextInputType.name,
                      iconData: Icons.person),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                      label: 'Phone number',
                      keyboaredTybe: TextInputType.phone,
                      iconData: Icons.phone),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    num: 1,
                    label: 'Password',
                    keyboaredTybe: TextInputType.visiblePassword,
                    iconData: Icons.lock,
                    suffixIcon: Icons.visibility_off,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                   num: 2,
                    keyboaredTybe: TextInputType.visiblePassword,
                    label: 'Confirm Password',
                    iconData: Icons.lock,
                    suffixIcon: Icons.visibility_off,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    minWidth: widthDevice,
                    color: prColor,
                    onPressed: () {},
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF304FFE))),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: widthDevice / 12,
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF304FFE))),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Color(0xFF304FFE),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
