import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:ionicons/ionicons.dart';
import 'package:landinastyle/screens/Home/home_view.dart';
import 'package:landinastyle/screens/Post/Comment/comment_widget.dart';
import 'package:readmore/readmore.dart';

class PostPreview extends StatefulWidget {
  const PostPreview({Key? key}) : super(key: key);

  @override
  State<PostPreview> createState() => _PostPreviewState();
}

class _PostPreviewState extends State<PostPreview> {
  final url = "http://jsonplaceholder.typicode.com/posts";

  void fetchPosts() async {
    try {
      final response = await get(Uri.parse(url));
      final jsonData = jsonDecode(response.body) as List;
    } catch (err) {}
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      onLongPress: () {},
      onDoubleTap: () {},
      child: Container(
        margin: EdgeInsets.only(
          bottom: 15,
        ),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            AppBar(
              toolbarHeight: 30,
              shadowColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.black,
              leadingWidth: 40,
              leading: GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(
                    right: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffD3D3D3),
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/avatar.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              titleSpacing: 8,
              title: Text(
                'امید شباب',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              actions: [
                IconButton(
                  highlightColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  padding: EdgeInsets.only(
                    top: 0,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      context: context,
                      backgroundColor: Colors.transparent,
                      isScrollControlled: true,
                      builder: (context) {
                        return Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(
                            top: 40,
                          ),
                          constraints: BoxConstraints(
                            maxHeight: MediaQuery.of(context).size.height * 0.9,
                            minHeight: 100,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: HomeView(),
                        );
                      },
                    );
                  },
                  icon: Icon(
                    Ionicons.reorder_two_outline,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            AspectRatio(
              aspectRatio: 1 / 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xfff1f1f1),
                  // image: const DecorationImage(
                  //   image: NetworkImage(
                  //     'hello',
                  //   ),
                  //   fit: BoxFit.cover,
                  // ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: ReadMoreText(
                'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد.',
                trimLines: 2,
                colorClickableText: Colors.pink,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'بیشتر',
                trimExpandedText: '',
                style: TextStyle(
                  fontSize: 12,
                  height: 2,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CommentWidget(),
          ],
        ),
      ),
    );
  }
}
