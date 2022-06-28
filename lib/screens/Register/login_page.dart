import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:landinastyle/screens/Register/auth_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void initState() {
    super.initState();
  }

  final _apiKey = '_J7Ouxq0SvsRRXcIox2gJlbxHTEEWzklzRrpEoMGrI8=';
  final _pid = '7ig4etcrd8';
  final _fnum = '3000505';
  final _tnum = '09301650025';
  final _verificationCode = '1234';

  void sendPatternTo() async {
    var url = 'http://ippanel.com:8080/?apikey=' +
        _apiKey +
        '&pid=' +
        _pid +
        '&fnum=' +
        _fnum +
        '&tnum=' +
        _tnum +
        '&p1=verification-code&v1=' +
        _verificationCode;
    Response response = await get(
      Uri.parse(url),
    );
  }

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
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff1f1f1),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(45, 0, 0, 0),
                          offset: Offset(0.0, 0.0),
                          blurRadius: 80.0,
                          spreadRadius: 5.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    width: 80,
                    height: 80,
                    child: const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Image(
                        image: AssetImage(
                          'assets/images/Landina Style Logo.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'به لندینا استایل خوش اومدی!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'شماره خوشگلت رو وارد کن تا رمز ورود رو ارسال کنیم',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: '09XXXXXXXXX',
                        helperText: 'حواست باشه که باید 11 رقمی باشه',
                        helperStyle: TextStyle(
                          fontSize: 10,
                        )),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.send,
                    autocorrect: false,
                    maxLength: 11,
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
                          builder: (context) => AuthPage(),
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
                          'کد ورود رو برام پیامک کن',
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
                    child: Text(
                      'با ثبت نام توی لندینا استایل شرایط استفاده ازش رو قبول می کنی',
                      style: TextStyle(
                        fontSize: 12,
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
