import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ionicons/ionicons.dart';
import 'package:landinastyle/screens/Direct/user.dart';
import 'package:landinastyle/screens/Shopping/shopping_cart.dart';
import 'package:readmore/readmore.dart';

class DirectPage extends StatefulWidget {
  const DirectPage({Key? key}) : super(key: key);

  @override
  State<DirectPage> createState() => _DirectPageState();
}

class _DirectPageState extends State<DirectPage> {
  late Future<List<User>> usersFuture;

  void initState() {
    super.initState();
    usersFuture = getUsers(context);
  }

  static Future<List<User>> getUsers(BuildContext context) async {
    const url = 'https://jsonplaceholder.typicode.com/users';
    final response = await http.get(
      Uri.parse(url),
    );
    final body = json.decode(response.body);
    return body.map<User>(User.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
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
                      Ionicons.search_outline,
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
                'پیام ها',
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
            FutureBuilder<List<User>>(
              future: usersFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: Text('در حال بارگذاری ...'),
                  );
                } else if (snapshot.hasData) {
                  final users = snapshot.data!;
                  return buildUsers(users);
                } else {
                  return const Center(
                    child: Text('هیچ اطلاعاتی یافت نشد!'),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildUsers(List<User> users) => ListView.builder(
        shrinkWrap: true,
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return GestureDetector(
            child: Container(
              margin: EdgeInsets.only(
                bottom: 20,
              ),
              child: Stack(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 241, 241, 241),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 60,
                      left: 60,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user.username,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff3b3b3b),
                          ),
                        ),
                        ReadMoreText(
                          user.phone,
                          trimLines: 1,
                          colorClickableText: Color(0xff3b3b3b),
                          trimMode: TrimMode.Line,
                          trimCollapsedText: ' ',
                          trimExpandedText: '',
                          style: TextStyle(
                            fontSize: 12,
                            height: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 241, 241, 241),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => MessagePage(),
              //   ),
              // );
            },
          );
        },
      );
}
