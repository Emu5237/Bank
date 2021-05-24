import 'package:flutter/material.dart';
import 'package:log/screens/signup.dart';
import 'package:log/screens/HomePage.dart';
import 'package:log/utils/constants.dart';
import 'package:log/shared/custom_field.dart';
import 'package:log/shared/rounded_button.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              color: Colors.grey[300],
              height: 1.6,
            ),
            preferredSize: Size.fromHeight(5.0)),
        backgroundColor: Colors.white,
        title: Container(
          width: 46,
          child: Image.asset(
            "assets/images/vut.png",
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Log In",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'avenir',
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    CustomField(
                      hintText: "Email",
                      iconData: Icons.alternate_email,
                    ),
                    CustomField(
                      hintText: "Password",
                      iconData: Icons.lock_outline,
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    RoundedButton(
                      text: "Log In",
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(

                              // ignore: missing_required_param
                              builder: (context) => homePage()),
                        );
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "This application allows Micro Merchants to\naccess and provide banking services from anywhere, 24 hours around the clock.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kGreyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'avenir',
                      ),
                    ),
                    SizedBox(height: 250.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Do you have an account?",
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
                              MaterialPageRoute(builder: (context) => Signup()),
                            );
                          },
                          child: Text(
                            "Sign Up",
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
