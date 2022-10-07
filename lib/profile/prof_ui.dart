import 'package:flutter/material.dart';
import 'package:untitled/profile/prof_drata.dart';
import 'package:untitled/style/colormanger.dart';
List <String>iconsta=[
  "images/3ash_icon.png",
  "images/rate_icon.png",
  "images/tkoim_icon.png",
];
List <String>title=[
  "الهدف",
  "مستوي الطالب",
  "تاريخ الانضمام",
];
class ProfMain extends StatelessWidget {
  const ProfMain({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurple.shade300,
      child: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Column(
          children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image:const DecorationImage(
                        image: AssetImage("images/7mada1.png",),
                        fit: BoxFit.cover,
                      ),
                        color:ColorManger.third,
                      borderRadius:BorderRadius.circular(120),
                      border: Border.all(
                        width: .1,
                      ),
                    ),
                  ),
                Text("shehab eldin ehab",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: ColorManger.primeText,
                )),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                profdata(iconsta[0],title[0]),
                profdata(iconsta[1],title[1]),
                profdata(iconsta[2],title[2]),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      width: 156,
                      decoration: BoxDecoration(
                        color:Colors.deepPurple.shade900,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding:const EdgeInsets.only(left: 10,right: 10),
                      child:const Text("المحضرات",
                        style:TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}
