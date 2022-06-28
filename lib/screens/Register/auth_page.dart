import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:landinastyle/screens/Nav/home.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(
              minWidth: 125,
              maxWidth: 325,
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Ionicons.log_in_outline,
                    size: 80,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'رمز ورود رو برات فرستادیم',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'یک کد شش رقمی رو برات فرستادیم. اونو اینجا وارد کن!',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: '_ _ _ _ _ _',
                        helperText: 'حواست باشه که باید 6 رقمی باشه',
                        helperStyle: TextStyle(
                          fontSize: 10,
                        )),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.send,
                    autocorrect: false,
                    maxLength: 6,
                    cursorColor: Colors.pink,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: Container(
                      child: const Padding(
                        padding: const EdgeInsets.only(
                          top: 18,
                          bottom: 18,
                        ),
                        child: Text(
                          'رمز ورودم رو تایید کن',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: const ShapeDecoration(
                        color: Color.fromARGB(255, 255, 232, 240),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    child: Center(
                      child: Text(
                        'ارسال مجدد رمز ورود',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
