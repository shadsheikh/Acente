import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Saglik extends StatefulWidget {
  static const String routname = '/saglik';
  @override
  _SaglikState createState() => _SaglikState();
}

class _SaglikState extends State<Saglik> {
  int _toggleValue = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  IconTextButton(
                    text: 'GERI',
                    buttonColor: Colors.white,
                    onPress: () {
                      Navigator.of(context).pop();
                    },
                    shadow: Blue_Low_Shadow,
                    color: Violet,
                    icon: CupertinoIcons.arrow_left_circle,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                  ),
                  Spacer(),
                  Text('Sağlık', style: V28R)
                ],
              ),
              SizedBox(height: 45),
              AnimatedToggle(
                values: ['Yenilenen', 'Yenilenmeyen'],
                onToggleCallback: (value) {
                  setState(() {
                    _toggleValue = value;
                  });
                },
                buttonColor: Violet,
                backgroundColor: Unseleted,
                textColor: Colors.white,
              ),
              SizedBox(height: 25),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      RenewedInfo(),
                      SizedBox(height: 25),
                      RenewedInfo(),
                      SizedBox(height: 25),
                      RenewedInfo(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
