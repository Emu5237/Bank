import 'package:flutter/material.dart';
import 'package:log/screens/login.dart';
import 'package:log/screens/signup.dart';
import 'package:log/utils/constants.dart';
import 'package:log/shared/rounded_button.dart';

class Confirmation extends StatelessWidget {
  final bool send;

  Confirmation({@required this.send});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.only(right: 24, left: 24, bottom: 70),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                          size: 48,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Your account has been\nregistered successfully!",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Thank You! ",
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/images/like.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Do you want to log in ?",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RoundedButton(
                      text: "Log In",
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      }),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Or , ",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'avenir',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RoundedButton(
                    text: "Go Back",
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
