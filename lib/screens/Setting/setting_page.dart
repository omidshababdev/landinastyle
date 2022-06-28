import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:landinastyle/screens/Profile/profile_image.dart';
import 'package:landinastyle/screens/Shopping/shopping_cart.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: ListView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: [
              AppBar(
                elevation: 0,
                toolbarHeight: 66,
                shadowColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                leadingWidth: 66,
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Color.fromARGB(10, 0, 0, 0),
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Ionicons.checkmark_outline,
                        color: Color.fromARGB(255, 51, 51, 51),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      hoverColor: Colors.transparent,
                    ),
                  ),
                ),
                centerTitle: true,
                titleSpacing: 0,
                title: Text(
                  'تنظیمات',
                  style: TextStyle(
                    color: Color.fromARGB(255, 51, 51, 51),
                    fontSize: 18,
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Color.fromARGB(10, 0, 0, 0),
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Ionicons.arrow_back_outline,
                          color: Color.fromARGB(255, 51, 51, 51),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        hoverColor: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 35,
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    ProfileImage(),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: Text(
                        'امید شباب',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 36, 36, 36),
                          fontWeight: FontWeight.bold,
                        ),
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
