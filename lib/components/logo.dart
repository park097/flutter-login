import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app/size.dart';

class Logo extends StatelessWidget {
  String title;
  Logo(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/carrot.png", width: 70, height: 70),
        SizedBox(height: large_gap),
        Row(
          children: [
            Text(
              "$title",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ],
        )
      ],
    );
  }
}
