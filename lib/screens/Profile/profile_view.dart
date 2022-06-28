import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'package:landinastyle/screens/Profile/profile_image.dart';
import 'package:landinastyle/screens/Setting/setting_page.dart';
import 'package:landinastyle/screens/Shopping/shopping_cart.dart';
import 'package:readmore/readmore.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: Container(
            child: ListView(
              padding: EdgeInsets.only(
                bottom: 20,
              ),
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
                          Ionicons.settings_outline,
                          color: Color.fromARGB(255, 51, 51, 51),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SettingPage(),
                            ),
                          );
                        },
                        hoverColor: Colors.transparent,
                      ),
                    ),
                  ),
                  centerTitle: true,
                  titleSpacing: 0,
                  title: Text(
                    'حساب کاربری',
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
                            Ionicons.reorder_two_outline,
                            color: Color.fromARGB(255, 51, 51, 51),
                          ),
                          onPressed: () {},
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
                          'استیون پوول جابز',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff3b3b3b),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          right: 15,
                          left: 15,
                        ),
                        child: ReadMoreText(
                          'چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است',
                          textAlign: TextAlign.center,
                          trimLines: 4,
                          colorClickableText: Colors.pink,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'بیشتر',
                          trimExpandedText: 'کمتر',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.65,
                        child: Column(
                          children: [
                            ButtonBarSuper(
                              lineSpacing: 10,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 45,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 232, 240),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "پیام ها",
                                        style: TextStyle(
                                          color: Colors.pink,
                                          fontWeight: FontWeight.normal,
                                          height: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 45,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 232, 240),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "تماس با من",
                                        style: TextStyle(
                                          color: Colors.pink,
                                          fontWeight: FontWeight.normal,
                                          height: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GridView.count(
                  shrinkWrap: true,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: List.generate(
                    15,
                    (index) => PostProfilePreview(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//--Post Item
class PostProfilePreview extends StatefulWidget {
  const PostProfilePreview({Key? key}) : super(key: key);

  @override
  State<PostProfilePreview> createState() => _PostProfilePreviewState();
}

class _PostProfilePreviewState extends State<PostProfilePreview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xfff1f1f1),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
