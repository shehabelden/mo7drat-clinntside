import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled/style/colormanger.dart';
class LocalAla5tbar extends StatelessWidget {
  const LocalAla5tbar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorManger.prime,
      child: CarouselSlider(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 1,
        ),
        items: ["الاختبار هي مجرد وسيله بنعرف من خلالها نقاط الضعف و القوه مفيش داعي للتوتر",
          "الاسئله عباره عن صح وغلط واختيارات",
          "كن امين مع نفسك وحل بمجهودك الشخصي عشانن ساعد عقلك انه يتطور",
           "كون امين مع نفسك وحل بمجهودك الشخصي",
           ].map((i){
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height,
                  child: Center(
                      child: Text('text $i', style: TextStyle(fontSize: 16.0,color:ColorManger.primeText),
                        textAlign: TextAlign.center,
                      )
                  )
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

