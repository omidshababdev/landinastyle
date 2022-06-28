import 'package:flutter/material.dart';
import 'package:landinastyle/screens/Story/story_page.dart';

class HighlightWidget extends StatefulWidget {
  const HighlightWidget({Key? key}) : super(key: key);

  @override
  State<HighlightWidget> createState() => _HighlightWidgetState();
}

class _HighlightWidgetState extends State<HighlightWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(right: 5, left: 5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StoryPage()));
              },
              child: Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffD3D3D3),
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage('assets/images/Reels Icon.png'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                    width: 50,
                    child: Text(
                      'هایلات',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
