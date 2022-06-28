import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:landinastyle/screens/Nav/home.dart';
import 'package:landinastyle/screens/Shopping/shopping_cart.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: SafeArea(
          child: Container(
            child: ListView(
              shrinkWrap: true,
              physics: ScrollPhysics(),
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
                    'محصول',
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
                // SizedBox(
                //   height: 15,
                // ),
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
                    vertical: 15,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "ست شومیز و شلوار مدل ترلان",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد کتابهای زیادی در شصت و سه درصد گذشته حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        },
                        child: Container(
                          child: const Padding(
                            padding: const EdgeInsets.only(
                              top: 18,
                              bottom: 18,
                            ),
                            child: Text(
                              'می خوام با فروشنده صحبت کنم',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.pink,
                              ),
                            ),
                          ),
                          alignment: Alignment.center,
                          width: double.infinity,
                          decoration: const ShapeDecoration(
                            color: Color.fromARGB(255, 255, 232, 240),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
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
      ),
    );
  }
}
