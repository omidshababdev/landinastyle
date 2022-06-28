import 'package:flutter/material.dart';
import 'package:landinastyle/screens/Register/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(
      Duration(
        milliseconds: 3000,
      ),
      () {},
    );
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  bottom: 15,
                ),
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
                  borderRadius: BorderRadius.circular(35),
                ),
                width: 100,
                height: 100,
                child: const Padding(
                  padding: EdgeInsets.all(22.0),
                  child: Image(
                    image: AssetImage('assets/images/Landina Style Logo.png'),
                  ),
                ),
              ),
            ),
            Container(
              child: Text(
                'لندینا استایل',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Pelak',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
