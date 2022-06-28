 import 'dart:async';

import 'package:acente/presentation/Screens/Start_Screens/Dil_Secimi.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class AcenteLoadingScreen extends StatefulWidget {
  static const String routeName = '/accente_loading_screen';

  @override
  _AcenteLoadingScreenState createState() => _AcenteLoadingScreenState();
}

class _AcenteLoadingScreenState extends State<AcenteLoadingScreen> {

  @override
  void initState() {
    Timer(
      Duration(
        seconds: 1,
      ),
        (){
          Navigator.of(context).pushReplacementNamed(DilSecimi.routname);
        }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Primary,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70),
        child: Image.asset('lib/presentation/Assets/Assets_Start_Screens/logo.png'),
      ),
    );
  }
}
