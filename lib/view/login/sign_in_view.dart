import 'package:ebook/common/color_extenstion.dart';
import 'package:ebook/common_widget/round_button.dart';
import 'package:ebook/common_widget/round_textfield.dart';
import 'package:ebook/view/login/forgot_password_view.dart';
import 'package:ebook/view/main_tab/main_tab_view.dart';
import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  _SignInViewState createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  TextEditingController txtCode = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  bool isStay = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: TColor.primary,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign in",
                    style: TextStyle(
                        color: TColor.text,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RoundTextfield(
                      controller: txtCode,
                      hintText: "Optional Group Special Code"),
                  const SizedBox(
                    height: 15,
                  ),
                  RoundTextfield(
                      controller: txtEmail, hintText: "Email Address"),
                  const SizedBox(
                    height: 15,
                  ),
                  RoundTextfield(
                    controller: txtPassword,
                    hintText: "Password",
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isStay = !isStay;
                          });
                        },
                        icon: Icon(
                            isStay
                                ? Icons.check_box
                                : Icons.check_box_outline_blank,
                            color: isStay ? TColor.primary : TColor.subTitle),
                      ),
                      Text(
                        "Stay Logged In",
                        style: TextStyle(color: TColor.text, fontSize: 13),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotPasswordView()));
                          },
                          child: const Text(
                            "Forgot Your Password ?",
                            style: TextStyle(color: Colors.red, fontSize: 13),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  RoundLineButton(
                      title: "Sign In",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainTabView()));
                      })
                ],
              ))),
    );
  }
}
