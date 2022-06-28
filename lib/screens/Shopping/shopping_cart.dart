import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key? key}) : super(key: key);

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
                          Ionicons.help_outline,
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
                    'سبدخرید',
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
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return CartItem();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CartItem extends StatefulWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 241, 241, 241),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 115,
              top: 10,
              bottom: 10,
              left: 45,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'شلوار جین مام فیت پشت کش',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'قیمت: ' + '258 تومن',
                  style: TextStyle(
                    fontSize: 1,
                    color: Color(0xff3b3b3b),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 241, 241),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
