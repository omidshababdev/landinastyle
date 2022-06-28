import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:landinastyle/screens/Home/home_view.dart';
import 'package:landinastyle/screens/Post/Comment/comment_widget.dart';
import 'package:readmore/readmore.dart';

class ArticlePreview extends StatefulWidget {
  const ArticlePreview({Key? key}) : super(key: key);

  @override
  State<ArticlePreview> createState() => _ArticlePreviewState();
}

class _ArticlePreviewState extends State<ArticlePreview> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      onLongPress: () {},
      onDoubleTap: () {},
      child: Container(
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
              leading: Container(
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
              titleSpacing: 8,
              title: Text(
                'امید شباب',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
              ),
              actions: [
                IconButton(
                  highlightColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  padding: EdgeInsets.only(top: 0),
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
