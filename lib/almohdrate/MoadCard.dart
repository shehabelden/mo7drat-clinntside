import 'package:flutter/material.dart';
Widget moadCard(value,hight,width,pading){
  return Stack(
      children: [
        Container(
          height: hight,
          width: width,
          decoration: BoxDecoration(
            border: Border.all(
              width: .1,
              color: Colors.deepPurpleAccent,
            ),
            borderRadius: BorderRadius.circular(35),
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
                  color: Colors.deepPurpleAccent,
                  border:Border.all(
                    color:Colors.black,
                    width: .4
                  ),
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