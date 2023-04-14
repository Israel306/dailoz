import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:dailoz/screens/sign_up.dart';
import 'package:dailoz/screens/log_in.dart';
import 'package:dailoz/auth_controller.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var usernameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
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
                      'SignUp',
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
                            Icons.email_outlined,
                            color: Color(0xffA4A4A6),
                          ),
                          Gap(20),
                          Expanded(
                            child:
                            TextField(
                              controller: usernameController,
                              style: TextStyle(
                                  fontSize: 16
                              ),
                              autocorrect: false,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Username',
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
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.lock_outline,
                            color: Color(0xffA4A4A6),
                          ),
                          Gap(20),

                          Expanded(
                            child:
                            TextField(
                              controller: passwordController,
                              style: TextStyle(
                                  fontSize: 16
                              ),
                              obscureText: _obscureText,
                              autocorrect: false,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password',
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText ? Icons.visibility : Icons.visibility_off,
                                    color: Color(0xffA4A4A6),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                ),
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
                    Gap(50),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff5B67CA),
                        padding: EdgeInsets.fromLTRB(135, 15, 135, 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      onPressed: () {
                        AuthController.instance.register(usernameController.text.trim(), emailController.text.trim(), passwordController.text.trim());
                      },
                      child: Text(
                        'Create',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Gap(30),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            height: 20,
                            thickness: 1,
                            color: Color(0xffE3E8F1),
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text('or with',
                            style: TextStyle(
                                color: Colors.grey
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            height: 20,
                            thickness: 1,
                            color: Color(0xffE3E8F1),
                          ),
                        ),
                      ],
                    ),
                    Gap(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Color(0xffE3E8F1),
                              width: 1.0,
                            ),
                          ),
                          child: Image(
                            image: AssetImage('images/google.png'),
                          ),
                        ),
                        Gap(20),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Color(0xffE3E8F1),
                              width: 1.0,
                            ),
                          ),
                          child: Image(
                            image: AssetImage('images/fb.png'),
                          ),
                        ),
                      ],
                    ),
                    Gap(50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Have any account?",
                          style: TextStyle(
                            color: Color(0xff2C406E),
                            fontSize: 14,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(() => LogIn());
// Add your button press logic here.
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff2C406E),
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )

      ),
    );
  }
}

