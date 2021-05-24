import 'package:flutter/material.dart';
import 'package:log/utils/constants.dart';

// ignore: camel_case_types
class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.fromLTRB(22.0, 50.0, 25.0, 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 45,
                      height: 60,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/images/vut.png'),
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Welcome",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontFamily: 'avenir',
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 30.0),
            Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.lightBlue[50],
              child: Container(
                margin: EdgeInsets.only(left: 6, right: 2),
                height: 560.0,
                width: 700.0,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(3.0, 40.0, 0.0, 0.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Services',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 18.0,
                                fontFamily: 'avenir',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        width: 330.0,
                        child: Divider(
                          color: Colors.blueGrey[300],
                          thickness: 1,
                        ),
                      ),
                      SizedBox(height: 14.0),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.pink[200],
                                  child: Icon(Icons.money, color: Colors.white),
                                ),
                                SizedBox(height: 8.0),
                                Text('Customer\n Balance',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'avenir',
                                    ))
                              ],
                            ),
                            SizedBox(width: 26),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.blueGrey,
                                  child:
                                      Icon(Icons.payment, color: Colors.white),
                                ),
                                SizedBox(height: 8.0),
                                Text('   Cash \nPayment',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'avenir',
                                    )),
                              ],
                            ),
                            SizedBox(width: 32),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.blue[400],
                                  child: Icon(Icons.shopping_cart_outlined,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 8.0),
                                Text('Purchase \nPayment ',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'avenir',
                                    )),
                              ],
                            ),
                            SizedBox(width: 20),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.purple[200],
                                  child: Icon(Icons.check_box,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 8.0),
                                Text('Safetynet \nPayment',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 11.0,
                                      fontFamily: 'avenir',
                                      fontWeight: FontWeight.w700,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(7.0, 25.0, 19.0, 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.green[300],
                                  child: Icon(Icons.phone_android_outlined,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 8.0),
                                Text('  Mobile \nRecharge',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 11.0,
                                      fontFamily: 'avenir',
                                      fontWeight: FontWeight.w700,
                                    )),
                              ],
                            ),
                            SizedBox(width: 22),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.red[200],
                                  child: Icon(Icons.transform_outlined,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 8.0),
                                Text('Transaction\n Statement',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'avenir',
                                    )),
                              ],
                            ),
                            SizedBox(width: 15),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.orange[400],
                                  child: Icon(Icons.attach_money_outlined,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 8.0),
                                Text('  Merchant \nCommission',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 11.0,
                                      fontFamily: 'avenir',
                                      fontWeight: FontWeight.w700,
                                    )),
                              ],
                            ),
                            SizedBox(width: 25),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.pink[100],
                                  child: Icon(Icons.card_membership,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 8.0),
                                Text('Bills\nPay',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 11.0,
                                      fontFamily: 'avenir',
                                      fontWeight: FontWeight.w700,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0.0, 25.0, 18.0, 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.red[300],
                                  child:
                                      Icon(Icons.support, color: Colors.white),
                                ),
                                SizedBox(height: 8.0),
                                Text('      Fund\nManagement',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 11.0,
                                      fontFamily: 'avenir',
                                      fontWeight: FontWeight.w700,
                                    )),
                              ],
                            ),
                            SizedBox(width: 15),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.lightBlueAccent[300],
                                  child: Icon(Icons.lock_outline,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 8.0),
                                Text('  Change\n Password',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 11.0,
                                      fontFamily: 'avenir',
                                      fontWeight: FontWeight.w700,
                                    )),
                              ],
                            ),
                            SizedBox(width: 25),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.brown[300],
                                  child: Icon(Icons.sync, color: Colors.white),
                                ),
                                SizedBox(height: 8.0),
                                Text('Remittance\n',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 11.0,
                                      fontFamily: 'avenir',
                                      fontWeight: FontWeight.w700,
                                    )),
                              ],
                            ),
                            SizedBox(width: 25),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.green[400],
                                  child: Icon(Icons.my_library_books,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 8.0),
                                Text('Report\n',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'avenir',
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10.0, 25.0, 185.0, 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.blue[800],
                                  child: Icon(Icons.phone_in_talk,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 8.0),
                                Text(' Online\n  Help',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 11.0,
                                      fontFamily: 'avenir',
                                      fontWeight: FontWeight.w700,
                                    )),
                              ],
                            ),
                            SizedBox(width: 45),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.lime[700],
                                  child: Icon(Icons.chevron_right,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 8.0),
                                Text('More\n',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 11.0,
                                      fontFamily: 'avenir',
                                      fontWeight: FontWeight.w700,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: 3,
        fixedColor: Colors.orange,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey[600],
              ),
              // ignore: deprecated_member_use
              title: Text(
                'Home',
                style: TextStyle(color: Colors.grey[600], fontFamily: 'avenir'),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
                color: Colors.grey[600],
              ),
              // ignore: deprecated_member_use
              title: Text(
                'Category',
                style: TextStyle(color: Colors.grey[600], fontFamily: 'avenir'),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey[600],
              ),
              // ignore: deprecated_member_use
              title: Text(
                'Discover',
                style: TextStyle(color: Colors.grey[600], fontFamily: 'avenir'),
              )),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey[600],
            ),
            // ignore: deprecated_member_use
            title: Text('Account',
                style:
                    TextStyle(color: Colors.grey[600], fontFamily: 'avenir')),
          )
        ],
      ),
    );
  }
}
