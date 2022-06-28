import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:landinastyle/screens/Article/article_preview.dart';
import 'package:landinastyle/screens/Shopping/shopping_cart.dart';

class ArticleView extends StatelessWidget {
  const ArticleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            child: ListView(
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
                    'مقالات',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
