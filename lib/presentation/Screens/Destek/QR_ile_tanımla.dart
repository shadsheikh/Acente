import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';

class QRIleTanimla extends StatefulWidget {
  static const String routname = '/QR_ile_tanimla';

  @override
  _QRIleTanimlaState createState() => _QRIleTanimlaState();
}

class _QRIleTanimlaState extends State<QRIleTanimla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 19, bottom: 34, left: 25, right: 25),
                child: Row(
                  children: [
                    Text('QR İle tanımla', style: V40R),
                    Spacer(),
                    CircleIconButton(
                        buttonColor: Colors.white,
                        onPress: () {
                          Navigator.pop(context);
                        },
                        shadow: Red_Low_Shadow,
                        icon: Icons.close,
                        iconColor: Violet),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height - 188,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('lib/presentation/Assets/Assets_Destek/qr.png'),
                        fit: BoxFit.fill),
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
