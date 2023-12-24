import 'package:ebook/common/color_extenstion.dart';
import 'package:ebook/common_widget/round_button.dart';
import 'package:ebook/common_widget/round_textfield.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  _ForgotPasswordViewState createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
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
                    "Forgot password",
                    style: TextStyle(
                        color: TColor.text,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RoundTextfield(
                      controller: txtEmail, hintText: "Email Address"),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  RoundLineButton(title: "Submit", onPressed: () {})
                ],
              ))),
    );
  }
}
