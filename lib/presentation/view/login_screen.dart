import 'package:flutter/material.dart';
import 'package:register_scree/presentation/view/register_screen.dart';
import 'package:register_scree/presentation/widget/clipper2.dart';

import '../../core/utils/app_colors.dart';
import '../widget/clipper_widget.dart';
import '../widget/text_form_widget.dart';
import 'animated_list.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
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
                height: heightDevice.height / 3,
                // width: double.infinity,
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: heightDevice.height / 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    CustomTextField(
                      iconData: Icons.email,
                      keyboaredTybe: TextInputType.emailAddress,
                      label: 'Email',
                      validate: (String? val) {
                        if (val!.isEmpty) {
                          return 'enter the right email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: heightDevice.height / 25,
                    ),
                    CustomTextField(
                      iconData: Icons.lock,
                      keyboaredTybe: TextInputType.visiblePassword,
                      label: 'Password',
                      suffixIcon: Icons.visibility_sharp,
                      validate: (String? val) {
                        if (val!.isEmpty) {
                          return 'enter the right password';
                        }
                        return null;
                      },
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: heightDevice.height / 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  MaterialButton(
                    minWidth: heightDevice.width,
                    color: prColor,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  AnimatedListScreen()));
                      }
                      ;
                    },
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF304FFE))),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: heightDevice.height / 25,
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    color: Colors.white,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF304FFE))),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
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
            ),
          ],
        )),
      ),
    );
  }
}
