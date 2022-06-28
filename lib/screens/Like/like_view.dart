import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:landinastyle/screens/Like/like_component.dart';
import 'package:landinastyle/screens/Like/suggestion_for_you.dart';
import 'package:landinastyle/screens/Shopping/shopping_cart.dart';

class LikeView extends StatefulWidget {
  const LikeView({Key? key}) : super(key: key);

  @override
  State<LikeView> createState() => _HeartViewState();
}

class _HeartViewState extends State<LikeView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      child: Scaffold(
        body: ListView(
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
                      Ionicons.bag_outline,
                      color: Color.fromARGB(255, 51, 51, 51),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShoppingCart(),
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
                'اعلان ها',
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
            ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) => LikeComponent(),
            ),
          ],
        ),
      ),
    );
  }
}
