import 'package:flutter/material.dart';
import 'package:landinastyle/screens/Post/post_preview.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              PostPreview(),
            ],
          ),
        ),
      ),
    );
  }
}
