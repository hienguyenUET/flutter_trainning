import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_trainning/color/custom_color.dart';
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
  final String _passCode = "123456";
  bool _isActive = false;

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
                width: double.maxFinite,
                height: 72,
                // TODO: Tiep tuc thuc hien implement pin code
                child: Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 6,
                      onChanged: (String value) {},
                      autoFocus: true,
                      boxShadows: [
                        BoxShadow(color: CustomColor.WHITE_F2F2F2),
                      ],
                      showCursor: false,
                      validator: (v) {
                        if (v?.length == 6) {
                          if (v == _passCode) {
                            return "Matched";
                          } else {
                            return "Unmatched";
                          }
                        } else {
                          return null;
                        }
                      },
                      obscureText: true,
                      obscuringCharacter: '*',
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        fieldHeight: 56,
                        fieldWidth: 46,
                        borderRadius: BorderRadius.circular(8),
                        activeColor: Colors.transparent,
                        inactiveColor: Colors.transparent,
                        selectedColor: CustomColor.YELLOW_F4AD22,
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Checkbox(
              value: !_isActive,
              onChanged: (_) {
                setState(() {
                  _isActive = !_isActive;
                });
              },
              checkColor: Colors.white,
              activeColor: CustomColor.YELLOW_F4AD22,
            ),
            Text(
              "Deactive others devices",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: CustomColor.GREY_545456,
              ),
            )
          ],
        )
      ],
    );
  }
}
