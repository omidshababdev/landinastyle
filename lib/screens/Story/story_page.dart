import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:landinastyle/screens/Profile/profile_view.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xfff1f1f1),
                    // image: DecorationImage(
                    //   image: AssetImage('assets/images/bpw.gif'),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ),
                AppBar(
                  shadowColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.white,
                  leading: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileView(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20, right: 20),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xffD3D3D3),
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage('assets/images/avatar.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  actions: [
                    Container(
                        margin: EdgeInsets.only(
                          top: 20,
                          left: 10,
                        ),
                        width: 40,
                        height: 40,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Ionicons.arrow_back_circle_outline),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
