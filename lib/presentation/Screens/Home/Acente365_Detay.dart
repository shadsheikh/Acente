import 'dart:ui';

import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';

class Acente365Detay extends StatefulWidget {
  static const String routname = '/acente_365_detay';
  @override
  _Acente365DetayState createState() => _Acente365DetayState();
}

class _Acente365DetayState extends State<Acente365Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(child: Text('Trafik Sigortası nasıl yenilenir?',style: V28R)),
                    CircleIconButton(buttonColor: Colors.white, onPress: (){Navigator.pop(context);}, shadow: Red_Low_Shadow, icon: Icons.close, iconColor: Violet)
                  ],
                ),
                SizedBox(height: 25),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(''' Zorunlu Trafik Sigortası her sürücünün aracı için yaptırmakla yükümlü olduğu bir sigorta türüdür. Olası bir kazada karşı tarafın zararını ve 3.kişilere verilen zararları karşılamaktadır. Trafik Sigortası yaptırılmaması durumunda, sigortası bulunmayan aracın kanunen trafiğe çıkması yasaktır. Sigortası bulunmayan araç birimlerce tespit edilirse araç bağlanır ayrıca para cezası alır ve hasarsızlık indirimleri de yok olur.

Trafik Sigortası poliçesinde de diğer sigorta türlerinde olduğu için kapsam alanı bulunmaktadır. Poliçenin kapsamına giren ve girmeyen durumlar mevcuttur. Trafik Sigortasının genel şartları her sigorta şirketinde aynıdır. Aşağıda Zorunlu Trafik Sigortası kapsamına girmeyen durumları bulabilirsiniz.

1.       Araç park halindeyse yani kullanılmıyorsa trafik sigortası kapsamında değildir. Yani; bir aracın zararın Trafik Sigortası kapsamında sayılması için trafiğe çıkmış olmadı ve seyir halinde olmalıdır.
2.       Kazaya neden olan sigortalı aracın sürücüsünün ailesi (eş, çocuk, kardeş) aynı araçta yolculuk yapıyor olsa dahi maddi ve manevi tazminat talepleri karşılanmamaktadır.
3.       Kaza sonucunda zarar gören kişilerin yanında bulunan bagaj, eşya vs. malların zararları poliçe kapsamında değildir.
4.       Yarış amaçlı yapılan antrenmanlar sonucunda oluşabilecek zararlar (aracın yarış yapması veya gösteride kullanılması)
5.       Manevi tazminat talepleri
6.       Patlayıcı be parlayıcı madde taşınması sebebiyle oluşan zararlar
7.       Sigortalının kendisinin uğrayacağı zararlar
8.       Aracın bakım, onarım, alım-satım gibi işlemler nedeniyle faaliyette bulunacak yerlere bırakılması sonucunda meydana gelen zararlar. (bu zararlar faaliyet alanına aittir.)
9.       Gasp veya çalınan araçların sebep olduğu zararlar'''),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
