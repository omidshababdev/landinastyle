import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:landinastyle/screens/Direct/direct_page.dart';
import 'package:landinastyle/screens/Post/post_preview.dart';
import 'package:landinastyle/screens/Story/story_component.dart';
import 'package:landinastyle/screens/Story/story_page.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Scaffold(
          body: Container(
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: ListView(
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
                          Ionicons.prism_outline,
                          color: Color.fromARGB(255, 51, 51, 51),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DirectPage(),
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
                    'لندینا استایل',
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
                  height: 105,
                  decoration: BoxDecoration(
                    color: Color(0xfff1f1f1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5, left: 5),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => StoryPage(),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1,
                                        color: Color.fromARGB(42, 0, 0, 0),
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Icon(Ionicons.add_outline),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  SizedBox(
                                    width: 50,
                                    child: Text(
                                      'استوری',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) => StoryComponent(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) => PostPreview(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
