import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:dailoz/screens/sign_up.dart';
import 'package:dailoz/screens/log_in.dart';
import 'package:dailoz/auth_controller.dart';

class Reset extends StatefulWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  var emailController = TextEditingController();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final double horizontalPadding = MediaQuery.of(context).size.width * 0.1;
    final double verticalPadding = MediaQuery.of(context).size.height *0.10;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                  vertical: verticalPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Reset Password',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 36,
                        color: Color(0xff5B67CA),
                      ),
                    ),
                    Gap(50),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock_outline,
                            color: Color(0xffA4A4A6),
                          ),
                          Gap(20),
                          Expanded(
                            child:
                            TextField(
                              controller: emailController,
                              style: TextStyle(
                                  fontSize: 16
                              ),
                              autocorrect: false,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Email ID',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 20,
                      thickness: 1,
                      color: Color(0xffE3E8F1),
                    ),
                    Gap(30),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff5B67CA),
                        padding: EdgeInsets.fromLTRB(135, 15, 135, 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      onPressed: () {
                        AuthController.instance.Passwordreset(emailController.text.trim());
                      },
                      child: Text(
                        'Reset',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )

      ),
    );
  }
}

