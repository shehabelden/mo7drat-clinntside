import 'package:flutter/material.dart';
import 'package:untitled/profile/prof_drata.dart';
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
            child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius:BorderRadius.circular(120),
                  border: Border.all(
                    width: .1,
                  ),
                ),
              ),
          ),
          Expanded(
            flex: 3,
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
                      color:Colors.deepPurple.shade900,
                      width: 156,
                      padding:const EdgeInsets.only(left: 10,right: 10) ,
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
