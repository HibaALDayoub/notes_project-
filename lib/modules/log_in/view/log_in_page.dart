import 'package:flutter/material.dart';

import '../../widgets/custom_button_auth.dart';
import '../../widgets/custom_logo_auth.dart';
import '../../widgets/custom_text_form.dart';

class LogInPage extends StatelessWidget {
  LogInPage({super.key});
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(20),
      child: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 50),
            const CustomLogoAuth(),
            Container(height: 20),
            const Text("Log In",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Container(height: 10),
            const Text("Log In To Continue Using The App",
                style: TextStyle(color: Colors.grey)),
            Container(height: 20),
            const Text(
              "username",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Container(height: 10),
            CustomTextForm(
                hinttext: "ُEnter Your username", mycontroller: username),
            Container(height: 20),
            const Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Container(height: 10),
            CustomTextForm(hinttext: "ُEnter Your Email", mycontroller: email),
            Container(height: 10),
            const Text(
              "Password",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Container(height: 10),
            CustomTextForm(
                hinttext: "ُEnter Your Password", mycontroller: password),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 20),
              alignment: Alignment.topRight,
              child: const Text(
                "Forgot Password ?",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        CustomButtonAuth(title: "Log In", onPressed: () {}),
        Container(height: 20),

        Container(height: 20),
        // Text("Don't Have An Account ? Resister" , textAlign: TextAlign.center,)
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed("login");
          },
          child: const Center(
            child: Text.rich(TextSpan(children: [
              TextSpan(
                text: "Don't Have An Account ? ",
              ),
              TextSpan(
                  text: "Register",
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.bold)),
            ])),
          ),
        )
      ]),
    ));
  }
}
