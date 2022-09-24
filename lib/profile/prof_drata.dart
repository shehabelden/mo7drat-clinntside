import 'package:flutter/material.dart';
Widget profdata(String iconsta,String tilte){
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Container(
      height: 100,
      width: 350,
      color: Colors.deepPurple.shade200,
      padding:const EdgeInsets.only(top: 20,right: 20),
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(iconsta,width: 60,height: 60,),
           Text(tilte,
            style:const TextStyle(
              color: Colors.white38,
              fontWeight: FontWeight.bold,
              fontSize:20,
            ),
          ),
        ],
      ),
    ),
  );
}