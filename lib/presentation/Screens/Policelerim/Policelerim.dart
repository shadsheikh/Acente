import 'package:acente/presentation/Screens/Policelerim/Policelerim_Detail.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';

class Policelerim extends StatefulWidget {
  static const String routname = '/policelerim';

  @override
  _PolicelerimState createState() => _PolicelerimState();
}

class _PolicelerimState extends State<Policelerim> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: Grey_Gradient_Rev,
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 17),
                Row(
                  children: [
                    Image.asset('lib/presentation/Assets/Assets_Home/logo.png', width: 160),
                    Spacer(),
                    BorderButton(
                        text: 'S.SOYLU',
                        color: Ternary,
                        onPress: () {},
                        shadow: Red_High_Shadow,
                        fontSize: 12,
                        padding:
                            EdgeInsets.symmetric(vertical: 9, horizontal: 10)),
                  ],
                ),
                SizedBox(height: 55),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Poliçelerim', style: V40R),
                        SizedBox(height: 35),
                        InnerShadowDropdown(title: 'Nakliyat'),
                        SizedBox(height: 30),
                        CheckboxText(
                            text1: 'Vadesi bitmek üzere ',
                            text2: 'olanları göster',
                            onChange: (currentValue) => setState(
                                () => checkboxValue = currentValue ?? !checkboxValue),
                            checkboxValue: checkboxValue),
                        SizedBox(height: 30),
                        MyPoliciesListView(text1: '12303203203232', text2: 'Sinan Soylu',text3:  'Akbank Neasürans Hizmetleri A.Ş',text4: 'Kalan Gün: 365',onTap: (){showDialog(context: context, builder: (context)=>PolicelerimDetail(),);},),
                        SizedBox(height: 25),
                        MyPoliciesListView(text1: '12303203203232', text2: 'Sinan Soylu',text3:  'Akbank Neasürans Hizmetleri A.Ş',text4: 'Kalan Gün: 365',onTap: (){showDialog(context: context, builder: (context)=>PolicelerimDetail(),);},),
                        SizedBox(height: 25),
                        MyPoliciesListView(text1: '12303203203232', text2: 'Sinan Soylu',text3:  'Akbank Neasürans Hizmetleri A.Ş',text4: 'Kalan Gün: 365',onTap: (){showDialog(context: context, builder: (context)=>PolicelerimDetail(),);},),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

