import 'package:flutter/material.dart';
import 'package:log/screens/login.dart';
import 'package:log/shared/confirmation.dart';
import 'package:log/utils/constants.dart';
import 'package:log/shared/custom_field.dart';
import 'package:log/shared/rounded_button.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              pinned: true,
              forceElevated: false,
              expandedHeight: 50,
              collapsedHeight: 100,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/ema.png'),
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 20,
                        fontFamily: 'avenir',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    CustomField(
                      hintText: "Fullname",
                      iconData: Icons.person_outline,
                    ),
                    CustomField(
                      hintText: "Email",
                      iconData: Icons.alternate_email,
                    ),
                    CustomField(
                      hintText: "Mobile number",
                      iconData: Icons.phone,
                    ),
                    CustomField(
                      hintText: "Create your password",
                      iconData: Icons.lock_outline,
                    ),
                    CustomField(
                      hintText: "Confirm your password",
                      iconData: Icons.lock_outline,
                    ),
                    SizedBox(
                      height: 31,
                    ),
                    RoundedButton(
                      text: "Sign Up",
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              // ignore: missing_required_param
                              builder: (context) => Confirmation()),
                        );
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "By signing up, you agreed with our term of Services and Privacy Policy.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kGreyColor,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'avenir',
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 14,
                            fontFamily: 'avenir',
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: Text(
                            "Log In",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'avenir'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
