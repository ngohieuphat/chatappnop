import 'package:chatappnop/components/blue_image_page_scaffold.dart';
import 'package:chatappnop/components/lets_start.dart';
import 'package:chatappnop/components/logo.dart';
import 'package:chatappnop/components/terms_and_conditions.dart';
import 'package:chatappnop/screens/login/editnumber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Hello extends StatelessWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurImagePageScaffold(
      imagePath: 'images/bg.jpg',
      body: [
        Logo(height: 150.0, width: 150.0, radius: 50.0),
        Text("Hello",
            style:
                TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 60)),
        Column(
          children: [
            Text("WhatsApp is a Cross-platform",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7), fontSize: 20)),
            Text("mobile messaging with friends",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7), fontSize: 20)),
            Text("all over the world",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7), fontSize: 20))
          ],
        ),
        TermsAndConditions(onPressed: () {}),
        LetsStart(onPressed: () {
          Navigator.push(
              context, CupertinoPageRoute(builder: (context) => EditNumber()));
        })
      ],
    );
  }
}