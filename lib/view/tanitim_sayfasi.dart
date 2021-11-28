import 'package:flutter/material.dart';
import 'package:flutter_app_sanliurfa/core/colors.dart';
import 'package:flutter_app_sanliurfa/widget/app_baslik_text.dart';
import 'package:flutter_app_sanliurfa/widget/app_icerik_text.dart';
import 'package:flutter_app_sanliurfa/widget/responsive_button.dart';

class TanitimSayfasi extends StatefulWidget {
  const TanitimSayfasi({Key? key}) : super(key: key);

  @override
  _TanitimSayfasiState createState() => _TanitimSayfasiState();
}

class _TanitimSayfasiState extends State<TanitimSayfasi> {
  List resim = [
    "one.jpg",
    "two.jpg",
    "tree.jpg",
    "foor.jpg",
    "fifty.jpg",
  ];

  List kalinBaslik = [
    "Balıklıgöl",
    "Göbekli Tepe",
    "Kızıl Koyun",
    "Urfa Yemekleri",
    "Zeynel Başkan",
  ];
  List baslik = [
    "Tarihiyle Eşsiz Bir Mekan",
    "Tarihin Sıfır Noktası",
    "Kızılkoyun Nekropolü",
    "Şanlıurfa Mahalli Yemekleri",
    "Büyükşehir Belediye Başkanı",
  ];

  List icerik = [
    "Çevre köyler için içme ve kullanma suyu kaynağıdır dağlardan gelen dereler, kıyıdaki pınarlar ve yeraltı sularıyla beslenir.Ayrıca benekli alabalığın gölde yaşaması önemidir.",
    "Göbeklitepe veya Göbekli Tepe, Şanlıurfa il merkezinin 18 km kuzeydoğusunda, Örencik köyü yakınlarında yer alan dünyanın bilinen en eski kült yapılar topluluğudur. ",
    "'Kızılkoyun Projesi' kapsamında, Haleplibahçe ile Tılfındır mahallelerinde 2'nci ve 3'üncü derece sit alanı olan, 40 dönümde ortaya çıkan mağaraların turizme kazandırılması için 389 ev ile yapının kamulaştırılarak, yıkımı yapıldı.",
    "Kalabalık yer sofralarından tutun da meşhur yemeklerine kadar aile ve akrabalık kültürünün yemek kültürü ile birlikte anıldığı memlekettir. Yer sofralarında yenilen meşhur yöresel lezzetlerin tadını başka şehirlerde kurulan sofralarda bulmanız da olanak dâhilinde değil.",
    "Hamarat Eller Sosyal Tesislerinde düzenlenen etkinlikte 23'ü yöresel yemek 10'u yöresel tatlı olmak üzere 33 çeşit lezzetin modern sunumu yapıldı. Davetlilere Hamarat Eller Mutfağında hazırlanan ara sıcaklar ikram edildi.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: resim.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/" + resim[index]),
                    fit: BoxFit.cover)),
            child: Container(
              margin: EdgeInsets.only(
                top: 150,
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppBaslikText(text: kalinBaslik[index]),
                      SizedBox(height: 10),
                      ApppIcerikText(text: baslik[index]),
                      SizedBox(height: 8),
                      Container(
                          width: 200,
                          child: ApppIcerikText(text: icerik[index])),
                      SizedBox(height: 40),
                      ResponsiveButton(width: 200),
                      SizedBox(height: 10),
                    ],
                  ),
                  Column(
                    children: List.generate(resim.length, (indexDots) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 5),
                        width: 10,
                        height: index == indexDots ? 25 : 8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDots
                                ? AppColors.mainColor
                                : AppColors.mainColor.withOpacity(0.4)),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
