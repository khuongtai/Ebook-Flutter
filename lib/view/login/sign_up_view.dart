import 'package:ebook/view/help_us_view.dart';
import 'package:flutter/material.dart';
import 'package:ebook/common/color_extenstion.dart';
import 'package:ebook/common_widget/round_button.dart';
import 'package:ebook/common_widget/round_textfield.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController txtFirstName = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtCode = TextEditingController();
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
                    "Sign up",
                    style: TextStyle(
                        color: TColor.text,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RoundTextfield(
                      controller: txtFirstName, hintText: "First & Last Name"),
                  const SizedBox(
                    height: 15,
                  ),
                  RoundTextfield(
                    controller: txtEmail,
                    hintText: "Email Address",
                    keyBoardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RoundTextfield(
                    controller: txtMobile,
                    hintText: "Mobile",
                    keyBoardType: TextInputType.phone,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RoundTextfield(
                      controller: txtCode,
                      hintText: "Optional Group Special Code (option)"),
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
                        "Please sign me for the monthly newsletters",
                        style: TextStyle(color: TColor.subTitle, fontSize: 13),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  RoundButton(
                      title: "Sign up",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HelpUsView()));
                      })
                ],
              ))),
    );
  }
}
