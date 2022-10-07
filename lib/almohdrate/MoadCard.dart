import 'package:flutter/material.dart';
import 'package:untitled/style/Button.dart';
import '../style/colormanger.dart';
Widget moadCard(value,hight,width,pading){
  return Stack(
      children: [
        Container(
          height: hight,
          width: width,
          decoration: BoxDecoration(
            border: Border.all(
              width: .1,
              color: ColorManger.third,
            ),
            borderRadius: BorderRadius.circular(hight/4),
            image: DecorationImage(
              image: NetworkImage(value["Image"].toString()),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(bottom: pading),
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding:const EdgeInsets.only(left: 5,right: 5),
                decoration: BoxDecoration(
                  color: MainBoutton.prime,
                  border:Border.all(
                    color:Colors.black,
                    width: .4
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text("${value["scientific_material_name"]}",
                  style:const TextStyle(
                    fontSize:20,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
              ),
            ),
        ),

      ],
  );
}