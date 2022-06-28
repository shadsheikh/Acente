import 'package:acente/presentation/Screens/Home/Anasayfa_No_Login.dart';
import 'package:acente/presentation/Screens/Home/Home_Bottom_Tabs.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class SplashScreens extends StatefulWidget {
  static const String routeName = '/splash_screen';

  @override
  _SplashScreensState createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  PageController controller = PageController();
  double currentPage = 0;

  List<Color> color = [Violet,Dark_Purple,Raisin_Black,Ternary,Quaternary];
  List<String> heading = ['Anında Teklif Al, Karşılaştır, Satın Al!',
    'Geçmiş poliçelerini kolayca Takip et!',
    'QR Kod Kolaylığı BilgilerinAnında Gelsin!',
    '24 Banka ile Anlaşmalı Peşin, Taksitli Ödeme Kolaylığı!',
    '29 Farklı Sigorta Şirketi Tek bir uygulamada'
  ];

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
        child: Column(
          children: [
            ClipPath(
              clipper: DownCircle(MediaQuery.of(context).size.width,MediaQuery.of(context).size.height),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.5,
                color: color[currentPage.round()],
                 child: Column(
                   children: [
                     Expanded(
                       child: PageView(
                         controller: controller,
                         children: [
                           ImageOverllay(image: 'shoping_trolly.png'),
                           ImageOverllay(image: 'plus1.png'),
                           ImageOverllay(image: 'qr_scan.png'),
                           ImageOverllay(image: 'card.png'),
                           ImageOverllay(image: 'logo.png',width: 260),
                         ],
                       ),
                     ),
                     DotsIndicator(
                       dotsCount: 5,
                       position: currentPage,
                       decorator: DotsDecorator(
                         size: const Size.square(9.0),
                         activeSize: const Size(18.0, 18.0),
                         activeColor: Colors.white,
                         activeShape: CircleBorder(side: BorderSide(color: Color(0xFF706d81),width: 4),),
                       ),
                     ),
                     SizedBox(height: 25),
                     Text(heading[currentPage.round()],style: W28Sb,textAlign: TextAlign.center),
                     SizedBox(height: 40),
                   ],
                 ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',textAlign: TextAlign.center,style: V16L),
            ),
            Spacer(),
            Row(
              children: [
                SizedBox(width: 25),
                Flexible(flex: 3, child: SolidButton(text: (currentPage == 4)?'HEMEN BASLA':'DEVAM ET', onPress: (){Navigator.of(context).pushNamed(HomeBottomTabs.routname); }, shadow: Blue_High_Shadow , gradient: Blue_Gradient_2)),
                SizedBox(width: 25),
                if (currentPage <= 3)
                Flexible(flex: 1,child: BorderButton(text: 'ATLA', color: Violet, onPress: (){}, shadow: Violet_Low_Shadow)),
                if (currentPage <= 3)
                SizedBox(width: 25),
              ],
            ),
            Spacer(),
            SizedBox(height: 25)
          ],
        ),
      ),
    );
  }
}

class ImageOverllay extends StatelessWidget {

  final String image;
  final double? width;

  ImageOverllay({required this.image,this.width});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset('lib/presentation/Assets/Assets_Start_Screens/logo_icon.png',width: 260),
        Image.asset('lib/presentation/Assets/Assets_Start_Screens/$image',width: width ?? 160),
      ],
    );
  }
}

class DownCircle extends CustomClipper<Path>{

  final double width;
  final double height;

  DownCircle(this.width,this.height);

  @override
  Path getClip(Size size) {
     Path path = _getRandomPath();
     return path;
  }

  Path _getRandomPath(){
    var path = Path();
    path.addOval(Rect.fromCircle(
      center: Offset(width/2, 100),
      radius: (height/1.5)-100,
    ));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper)=>true;

}