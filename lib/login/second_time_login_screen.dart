import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'description_field.dart';

class SecondTimeLogin extends StatefulWidget {
  const SecondTimeLogin({Key? key}) : super(key: key);

  @override
  State<SecondTimeLogin> createState() => _SecondLoginScreenState();
}

class _SecondLoginScreenState extends State<SecondTimeLogin> {
  final TextEditingController _controller = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = '';
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    errorController = StreamController<ErrorAnimationType>();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        const DescriptionText(
          width: 258,
          height: 24,
          text: "Please enter your account PIN to login",
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 336,
                height: 72,
                // TODO: Tiep tuc thuc hien implement pin code
                child: Form(
                  key: formKey,
                  child: PinCodeTextField(
                    appContext: context,
                    length: 4,
                    onChanged: (String value) {},
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
