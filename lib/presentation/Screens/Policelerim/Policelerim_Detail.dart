import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';


class PolicelerimDetail extends StatefulWidget {


  @override
  _PolicelerimDetailState createState() => _PolicelerimDetailState();
}

class _PolicelerimDetailState extends State<PolicelerimDetail> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 23, vertical: 30),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'lib/presentation/Assets/Assets_Common/logo.png',
                    width: 115,
                    height: 57,
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Zorunlu trafik Sigortası',
                        style: V16Sb,
                      ),
                      SizedBox(height: 6),
                      Text(
                        'AK Sigorta',
                        style: V16L,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24),
              Container(
                height: 78,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: Red_High_Shadow,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    RichText(text: TextSpan(children: [
                      TextSpan(text: 'Poliçe bedelim: ',style: V16L),
                      TextSpan(text: '3.700 TL',style: V16B),
                    ],style: B16R),),
                    RichText(text: TextSpan(children: [
                      TextSpan(text: 'Yenileme tarihim: ',style: V16L),
                      TextSpan(text: '27.08.2022',style: V16B),
                    ],style: B16R),),
                  ],
                ),
              ),
              SizedBox(height: 35),
              Text('Ana teminatlar',style: V12Sb),
              SizedBox(height: 12),
              Expanded(
                child: SingleChildScrollView(
                child: Column(
                  children: [
                    Divider(),
                    SizedBox(height: 15),
                    DualTextRow(text1: 'Maddi Hasar Araç Başına',text2: '41.000 TL',style1: V16L,style2: V16Sb),
                    SizedBox(height: 15),
                    Divider(),
                    SizedBox(height: 15),
                    DualTextRow(text1: 'Maddi Hasar Kaza Başına',text2: '82.000 TL',style1: V16L,style2: V16Sb),
                    SizedBox(height: 15),
                    Divider(),
                    SizedBox(height: 15),
                    DualTextRow(text1: 'Ölüm ve Sakatlanma\nKişi Başına',text2: '410.000 TL',style1: V16L,style2: V16Sb),
                    SizedBox(height: 15),
                    Divider(),
                    SizedBox(height: 15),
                    DualTextRow(text1: 'Ölüm ve Sakatlanma\nKaza Başına',text2: '2.050.000 TL',style1: V16L,style2: V16Sb),
                    SizedBox(height: 15),
                    Divider(),
                    SizedBox(height: 15),
                    DualTextRow(text1: 'Sağlık Gideri Kişi Başına',text2: '410.000 TL',style1: V16L,style2: V16Sb),
                    SizedBox(height: 15),
                    Divider(),
                    SizedBox(height: 15),
                    DualTextRow(text1: 'Sağlık Gideri Kaza Başına',text2: '2.050.000 TL',style1: V16L,style2: V16Sb),
                    SizedBox(height: 15),
                    Divider(),
                  ],
                ),
              ),),
              SizedBox(height: 25),
              SolidButton(text: 'KAPAT', onPress: (){Navigator.of(context).pop();}, shadow: Red_High_Shadow,gradient: Red_Gradient),
            ],
          ),
        ));
  }
}