import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SuggestionForYou extends StatefulWidget {
  const SuggestionForYou({Key? key}) : super(key: key);

  @override
  State<SuggestionForYou> createState() => _SuggestionForYouState();
}

class _SuggestionForYouState extends State<SuggestionForYou> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "ممکنه اینا رو بخوای دنبال کنی",
          style: TextStyle(),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
