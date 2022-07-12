import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Amazon Screen',
    home: AmazonScreen(),
  ));
}

class AmazonScreen extends StatelessWidget {
  var backgroundColor = Color.fromRGBO(14, 22, 30, 1.0);
  var signInNowColor = Color.fromRGBO(66, 81, 101, 1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: Padding(
          padding: EdgeInsets.only(top: 15, left: 5),
          child: Text(
            'Back',
            style: TextStyle(
              color: Colors.blue,
              textBaseline: TextBaseline.ideographic,
            ),
          ),
        ),
        centerTitle: true,
        title: Container(
          width: 100,
          height: 80,
          decoration: BoxDecoration(
            image:DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage('img.png'),
            )
          ),
          ),
        actions: [Icon(Icons.refresh)],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        color: backgroundColor,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Create account',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
                decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Name",
              filled: true,
              fillColor: Colors.white,
            )),
            SizedBox(
              height: 10,
            ),
            TextField(
                decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Your email address",
              filled: true,
              fillColor: Colors.white,
            )),
            SizedBox(
              height: 10,
            ),
            TextField(
                decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Create a password",
              filled: true,
              fillColor: Colors.white,
            )),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.info,
                  color: Colors.blue,
                ),
                Text(
                  'Passwords must be at least 6 characters.',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Create your Amazon account'))),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              child: Text(
                "By creating an account, you agree to the Prime Video Terms of Use and license agreements which can be found on the Amazon website.",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              "Already have an account?",
              style: TextStyle(
                color: Colors.white,
              ),
            )),
            SizedBox(height: 10),
            Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Sign-In now'),
                  style: ElevatedButton.styleFrom(primary: signInNowColor),
                )),
            SizedBox(height: 80),
            Center(
              child: Text(
                "© 1996-2021, Amazon.com, Inc. or its affiliates",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
