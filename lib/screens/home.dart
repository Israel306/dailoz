import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:dailoz/screens/sign_up.dart';
import 'package:dailoz/screens/log_in.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double horizontalPadding = MediaQuery.of(context).size.width * 0.1;
    final double verticalPadding = MediaQuery.of(context).size.height *0.20;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(50.0, 200.0, 50.0, 0.0),
              child: Image(
                image: AssetImage('images/background.png'),
              ),
            ),
            Gap(40),
            Text.rich(
              TextSpan(
                  text: 'Dailoz',
                  style: TextStyle(
                      fontSize: 40.0,
                      color: Color(0xff5B67CA),
                      fontWeight: FontWeight.w700,
                  ),
                  children: [
                    TextSpan(
                      text: '.',
                      style: TextStyle(
                        fontSize: 50.0,
                        color: Color(0xffFD7694),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ]
              ),
            ),
            Gap(10),
            Text(
                'Plan what you will do to be more organized for today,',
              style: TextStyle(
                color: Color(0xff2C406E),
              ),
            ),
            Gap(5),
            Text(
              'tomorrow and beyond',
              style: TextStyle(
                color: Color(0xff2C406E),
              ),
            ),
            Gap(40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff5B67CA),
                //padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
                padding: EdgeInsets.fromLTRB(145, 15, 145, 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              onPressed: () {
                Get.to(() => LogIn());
// Add your button press logic here.
              },
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            Gap(20),
            TextButton(
              onPressed: () {
                Get.to(() => SignUp());
// Add your button press logic here.
              },
              child: Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xff5B67CA),
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
          ],
        ),
      ),
      );
  }
}
