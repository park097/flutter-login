import 'package:flutter/material.dart';
import 'package:login_app/components/custom_text_form_field.dart';
import 'package:login_app/size.dart';
import 'package:login_app/user_repository.dart';
import 'package:login_app/validator_util.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>(); // 1. 글로벌 key
  final _email = TextEditingController();
  final _password = TextEditingController(); //언더바는 private 다른데서 못씀

  @override
  Widget build(BuildContext context) {
    return Form(
      // 2. 글로벌 key를 Form 태그에 연결하여 해당 key로 Form의 상태를 관리할 수 있다.
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: large_gap),
          CustomTextFormField(
              text: "Email", validate: validateEmail(), textController: _email),
          SizedBox(height: medium_gap),
          CustomTextFormField(
              text: "Password",
              validate: validatePassword(),
              isPassword: true,
              textController: _password),
          SizedBox(height: large_gap),
          // 3. TextButton 추가
          Text(
            "Forgot Password",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),

          TextButton(
            onPressed: () {
              // 3. 유효성 검사
              if (_formKey.currentState!.validate()) {
                UserRepository repo = UserRepository();
                repo.login(_email.text.trim(),
                    _password.text.trim()); //트림을 하면 앞뒤 공백 날려줌
                Navigator.pushNamed(context, "/home");
              }
            },
            child: const Text("Log in"),
          ),
        ],
      ),
    );
  }
}
