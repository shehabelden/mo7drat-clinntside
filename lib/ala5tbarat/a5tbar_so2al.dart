import 'package:flutter/material.dart';
class Anser extends StatelessWidget {
  Map ? val;
  List <Color> colorslist;
  String  anser;
   Anser({Key? key,this.val,required this.anser,required this.colorslist}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        height: 50,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color:val!.isEmpty? colorslist[0] : val!["asner"]==true? colorslist[1] : colorslist[2] ,
          border: Border.all(
            width: .1,
          ),
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(anser,style:const TextStyle(
                color: Colors.black,
              ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}



