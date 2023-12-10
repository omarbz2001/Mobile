import 'dart:async';
import 'package:flutter/material.dart';
import 'sign up.dart';
import 'package:flutter/gestures.dart';
import 'principale.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome',
      home: Welcome(),
    );
  }
}

class Welcome extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<Welcome> {
  @override
  void initState() {
    super.initState();

    // Delay for 5 seconds and then navigate to the next page
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NextPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 90, 10, 0),
                child: Text(
                  'Welcome  to our mobile application',
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: 'Hedvig',
                    color: Colors.blue.shade900,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                // image1uTz (29:753)
                margin: EdgeInsets.fromLTRB(30, 70, 0, 0),
                width: 400,
                height: 85,
                child: Image.asset(
                  'android/asset/img/freelance.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 90, 40, 0),
                child: Text(
                  'Empower your freelance journey with our app - where'
                  ' passion meets opportunity, and skills transform into'
                  ' success , all at your fingertips .',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Hedvig',
                      color: Colors.blue.shade900),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 120, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // lineBoa (25:666)
                      width: 60,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffadd4f3),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      // linetxt (25:667)
                      width: 20,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0x668f908d),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      // linedfa (25:668)
                      width: 20,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0x668f908d),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    // image1uTz (29:753)
                    margin: EdgeInsets.fromLTRB(40, 40, 0, 0),
                    width: 400,
                    height: 85,
                    child: Image.asset(
                      'android/asset/img/freelance.png',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
                    child: Text(
                      'LOG IN',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'acme',
                        color: Colors.blue.shade900,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(40, 70, 0, 16),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // emailaddressobW (32:816)
                            margin: EdgeInsets.fromLTRB(0, 0, 20, 17),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Email',
                                hintText: 'example@gmail.com',
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 20, 17),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Password',
                                hintText: 'Enter your password',
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                        ],
                      )),
                  Container(
                    margin: EdgeInsets.fromLTRB(90, 30, 0, 25),
                    width: double.infinity,
                    height: 72,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle2Btt (32:812)
                          left: 0,
                          top: 0,
                          child: Align(
                            child: SizedBox(
                              width: 201,
                              height: 59,
                              child: GestureDetector(
                                onTap: () {
                                  // Navigate to the second screen when the image is tapped
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => principale()),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xff284e7b),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // loginndn (32:814)
                          left: 71,
                          top: 16,
                          child: Align(
                            child: SizedBox(
                              width: 63,
                              height: 27,
                              child: Text(
                                'Log In',
                                style: TextStyle(
                                  fontFamily: 'ABeeZee',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  height: 1.1825,
                                  fontStyle: FontStyle.italic,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(100, 0, 0, 44),
                    width: double.infinity,
                    height: 60,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupoejlwHi (RkRyjGsQ54nPAzEycXoEJL)
                          margin: EdgeInsets.fromLTRB(0, 0, 43, 0),
                          padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffeeeeee),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: SizedBox(
                              width: 30,
                              height: 28,
                              child: Image.asset(
                                'android/asset/img/google.png',
                                width: 28,
                                height: 28,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffeeeeee),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: SizedBox(
                              width: 28,
                              height: 28,
                              child: Image.asset(
                                'android/asset/img/ff.png',
                                width: 30,
                                height: 40,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontFamily: 'ABeeZee-Regular',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 1.182000024,
                          fontStyle: FontStyle.italic,
                          color: Color(0xff5063bf),
                        ),
                        children: [
                          TextSpan(
                            text: 'Don’t have an account?',
                            style: TextStyle(
                              fontFamily: 'ABeeZee-Regular',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.1825,
                              fontStyle: FontStyle.italic,
                              color: Color(0xff878787),
                            ),
                          ),
                          TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              fontFamily: 'ABeeZee-Regular',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.1825,
                              fontStyle: FontStyle.italic,
                              decoration: TextDecoration.underline,
                              color: Color(0xff284e7b),
                              decorationColor: Color(0xff284e7b),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                 //Navigate to the 'sign_up.dart' file
                                 Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => sign_up()),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}
