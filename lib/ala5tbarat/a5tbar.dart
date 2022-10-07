import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/ala5tbarat/a5tbar_so2al.dart';
import 'package:untitled/ala5tbarat/cubt/cubt.dart';
import 'package:untitled/ala5tbarat/cubt/state.dart';
import '../style/colormanger.dart';
import 'load_ala5tbar.dart';
final Map cu={};
class Akhtbar extends StatelessWidget {
  const Akhtbar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var cubt= Main5tbarCubt.get(context);
    cubt.getlist();
    return AnimatedSplashScreen(
      backgroundColor:ColorManger.prime,
      duration: 10000,
      centered: true,
      splashIconSize: 800,
      splash: const LocalAla5tbar(),
      nextScreen: Material(
        color:ColorManger.prime,
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: BlocConsumer<Main5tbarCubt,Maina5tbareState>(
            listener: (c,i){},
            builder: (c,i) {
              return cubt.quizlist.isEmpty ? const  Text("") :  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Expanded(
                   flex: 1,
                   child:  Column(
                     children: [
                     const Text("اسم الاختبار",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                         fontWeight: FontWeight.bold,
                       ),
                       ),
                       Container(
                         height: 100,
                         width: 350,
                         decoration: BoxDecoration(
                           color:Colors.grey.shade400,
                           borderRadius: BorderRadius.circular(25),
                         ),
                          child: Text(cubt.sortquizlist[0]["so2al"],
                         style:const TextStyle(
                           color: Colors.white,
                           fontSize: 20,
                         ),
                            textAlign: TextAlign.center,
                         ),
                       ),
                     ],
                   ),
                 ),
                  Expanded(
                    flex: 2,
                    child:  Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child:ListView.builder(
                          itemCount:cubt.quizlist.length,
                          itemBuilder: (c,i){
                        return cubt.selctedanser==true? InkWell(
                            onTap: (){
                              cubt.selctedanser=true;
                            },
                            child: Anser(val:cubt.quizlist[i],anser:cubt.quizlist[i]["akhtbar_name"], colorslist: cubt.colorlist,)
                        ):
                        InkWell(
                            onTap: (){
                              cubt.selctedanser=true;
                            },
                            child: Anser(val:cu,anser:cubt.quizlist[i]["akhtbar_name"], colorslist:cubt.colorlist,),
                        );
              }),
                    ),
                  ),
                  InkWell(
                      onTap:(){
                      },
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color:Colors.deepPurple[900],
                          border: Border.all(
                            width: .1,
                          ),
                        ),
                        child:const Text("التالي",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                  ),
                ],
              );
          }
          ),
        ),
      ),
    );
  }
}