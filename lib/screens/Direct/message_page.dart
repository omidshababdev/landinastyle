import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'dart:math' as math;

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.black,
        leading: Container(
          margin: EdgeInsets.only(top: 10, right: 20, bottom: 10),
          width: 40,
          decoration: BoxDecoration(
            color: Color(0xffD3D3D3),
            borderRadius: BorderRadius.circular(50),
            // image: DecorationImage(
            //   image: AssetImage('assets/images/avatar (1).jpg'),
            //   fit: BoxFit.cover,
            // ),
          ),
        ),
        titleSpacing: 10,
        title: Text(
          'امید شباب',
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
        ),
        actions: [
          Container(
            child: IconButton(
              icon: Icon(Ionicons.videocam_outline),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: IconButton(
              icon: Icon(
                Ionicons.arrow_back_circle_outline,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 15,
          left: 15,
          bottom: 20,
        ),
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xfff1f1f1),
              borderRadius: BorderRadius.circular(30),
            ),
            child: ListView(
              reverse: true,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        bottom: 15,
                        right: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Flexible(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: Color(0xfff9f9f9),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                  bottom: 10,
                                  right: 15,
                                  left: 15,
                                ),
                                child: Text(
                                  'سلام چه خبر؟ امروز استایلت چطوره؟',
                                  style: TextStyle(
                                    height: 2.5,
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15, bottom: 15, left: 15),
                      child: Row(
                        children: [
                          Flexible(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                                color: Color.fromARGB(255, 219, 219, 219),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                  bottom: 10,
                                  right: 15,
                                  left: 15,
                                ),
                                child: Text(
                                  'هیچی! سلامتی. استایل هم یک استایل جذاب تو دل برو هست. راستی می دونی امروز صبح چه اتفاقی افتاد؟',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      height: 2.5),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                        right: 10,
                        left: 10,
                      ),
                      margin: EdgeInsets.only(
                        left: 15,
                        right: 15,
                        bottom: 15,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xfff9f9f9),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: TextFormField(
                                maxLines: 4,
                                minLines: 1,
                                cursorColor: Colors.pink,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 11,
                                    horizontal: 8,
                                  ),
                                  hintText: 'اینجا بنویس',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 0,
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 0,
                                      color: Colors.transparent,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.bottomLeft,
                            child: Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(math.pi),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Ionicons.add_circle_outline,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(math.pi),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Ionicons.send_outline,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
