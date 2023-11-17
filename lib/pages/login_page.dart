import 'package:flutter/material.dart';
import 'package:login_app/components/custom_form.dart';
import 'package:login_app/components/logo.dart';
import 'package:login_app/size.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: xlarge_gap),
            Logo("Login"),
            SizedBox(height: large_gap), // 1. 추가
            Text("Enter your emails and password"),
            CustomForm(), // 2. 추가
          ],
        ),
      ),
    );
  }
}
