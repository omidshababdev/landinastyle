import 'package:flutter/material.dart';
import 'package:landinastyle/screens/Story/story_page.dart';

class AddToStoryWidget extends StatefulWidget {
  const AddToStoryWidget({Key? key}) : super(key: key);

  @override
  State<AddToStoryWidget> createState() => _AddToStoryWidgetState();
}

class _AddToStoryWidgetState extends State<AddToStoryWidget> {
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
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xffD3D3D3),
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: AssetImage('assets/images/avatar (2).jpg'),
                      fit: BoxFit.cover,
                    )),
              ),
            ))
      ],
    );
  }
}
