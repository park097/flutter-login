import 'package:flutter/material.dart';
import 'package:login_app/size.dart';

class CustomTextFormField extends StatelessWidget {
  final textController;
  final validate;
  String text;
  bool isPassword;
  CustomTextFormField(
      {required this.text,
      required this.validate,
      this.textController,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$text"),
        SizedBox(height: small_gap),
        TextFormField(
          controller: textController,
          //1,value가 들어옴
          //2,value로 유효성 검사하기
          //3,리턴
          // null 리턴 -->유효성검사 통과
          // 메시지 리턴 -->유효성 검사 실패
          validator: (value) {
            return value!.isEmpty ? "Please enter some text" : null;
          },
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: "Enter $text",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
        ),
      ],
    );
  }
}
