import 'package:acente/presentation/Screens/Login_and_Register/Giris_Yap.dart';
import 'package:acente/presentation/Screens/Login_and_Register/Uye_Ol.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Acente365_Detay.dart';

class AnasayfaNoLogin extends StatefulWidget {
  static const String routname = '/anasayfa_no_login';

  @override
  _AnasayfaNoLoginState createState() => _AnasayfaNoLoginState();
}

class _AnasayfaNoLoginState extends State<AnasayfaNoLogin> {
  PageController controller = PageController();
  double currentPage = 0;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPage = controller.page?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('lib/presentation/Assets/Assets_Home/background${currentPage.round()}.png'),
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 55,top: 17,right: 25,left: 25),
                child: Row(
                  children: [
                    Image.asset('lib/presentation/Assets/Assets_Home/logo.png',width: 160),
                    Spacer(),
                    BorderButton(text: 'Giriş yap', color: Ternary, onPress: (){Navigator.of(context).pushNamed(GirisYap.routname);}, shadow: Red_High_Shadow,fontSize: 12,padding: EdgeInsets.symmetric(vertical: 7,horizontal: 8)),
                    SizedBox(width: 15),
                    SolidButton(text: 'ÜYE OL', onPress: (){Navigator.of(context).pushNamed(UyeOI.routname);}, shadow: Red_High_Shadow, gradient: Red_Gradient,fontSize: 12,padding: EdgeInsets.symmetric(vertical: 9,horizontal: 10)),
                  ],
                ),
              ),
              Expanded(
                child: PageView(
                  controller: controller,
                children: [
                  HomePageSliderItem(heading: 'Aradığın sigorta, Acente365’da',subHeading: 'Kasko’dan Dask’a, Tamamlayıcı Sağlık Sigortasından Seyahat Sigortasına kadar aradığın her teklifi bul, karşılaştır, satın al.',buttonVisible: false,),
                  HomePageSliderItem(heading: 'Kasko Sigortası',subHeading: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',),
                  HomePageSliderItem(heading: 'Trafik Sigortası',subHeading: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',),
                  HomePageSliderItem(heading: 'Dask Sigortası',subHeading: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',),
                  HomePageSliderItem(heading: 'Tamamlayıcı Sağlık Sigortası',subHeading: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',),
                ],
                ),
              ),
              DotsIndicator(
                dotsCount: 5,
                position: currentPage,
                decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 18.0),
                  activeColor: Violet,
                  activeShape: CircleBorder(side: BorderSide(color: Color(0xFFc5bec7),width: 4),),
                ),
              ),
              SizedBox(height: 75),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePageSliderItem extends StatelessWidget {
  final String heading;
  final String subHeading;
  final bool buttonVisible;

  HomePageSliderItem({required this.heading, required this.subHeading, this.buttonVisible = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(heading,style: V40Sb),
          SizedBox(height: 25),
          Text(subHeading,style: V16L),
          SizedBox(height: 25),
          Row(
            children: [
              Expanded(child: SolidButton(text: 'TEKLIF AL', onPress: (){}, shadow: Blue_High_Shadow,gradient: Blue_Gradient_2)),
              if(buttonVisible)
              SizedBox(width: 25),
              if(buttonVisible)
              Expanded(child: BorderButton(text: 'BILGI AL', onPress: (){Navigator.of(context).pushNamed(Acente365Detay.routname);}, shadow: Blue_High_Shadow,color: Blue)),
            ],
          ),
          Spacer(),
          Row(
            children: [
              ContainerText(title: 'Aninda Teklif', image: 'lib/presentation/Assets/Assets_Home/hand.png', shadow: Blue_High_Shadow),
              SizedBox(width: 32),
              ContainerText(title: '24/7 Destek', image: 'lib/presentation/Assets/Assets_Home/handfree.png', shadow: Red_High_Shadow),
            ],
          ),
          Spacer(),
          Row(
            children: [
              ContainerText(title: 'Kolay Erisim', image: 'lib/presentation/Assets/Assets_Home/path.png', shadow: Blue_High_Shadow),
              SizedBox(width: 32),
              ContainerText(title: 'Full Destek', image: 'lib/presentation/Assets/Assets_Home/shield.png', shadow: Red_High_Shadow),
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}


