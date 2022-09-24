import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/ala5tbarat/cubt/cubt.dart';
import 'package:untitled/ala5tbarat/cubt/state.dart';

import 'load_ala5tbar.dart';
class Akhtbar extends StatelessWidget {
  const Akhtbar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurpleAccent.shade200,
      child:AnimatedSplashScreen(
        duration: 5000,
        centered: true,
        splashIconSize: 800,
        splash:  LocalAla5tbar(),
        nextScreen: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: BlocProvider(
            create: (context)=>MainMohdrateCubt(),
            child:BlocConsumer<MainMohdrateCubt,Maina5tbareState>(
              listener: (c,i){},
              builder: (c,i) {
                var cubt= MainMohdrateCubt.get(c);
                cubt.getlist("الإطار المفاهيمي للإقتصاد الكلي.pptx");
                return Column(
                  children: [
                  const Expanded(
                     flex: 1,
                     child:  Text("اسم الاختبار",
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 30,
                       fontWeight: FontWeight.bold,
                     ),
                     ),
                   ),
                    Expanded(
                      flex: 3,
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context,i) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 40.0,bottom: 40.0),
                            child: Container(
                              height: 200,
                              width: 350,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color:cubt.gropval==cubt.quizlist[0]['als7'] ? Colors.grey[200]:Colors.green,
                                border: Border.all(
                                  width: .1,
                                ),
                              ),
                              child:Row(
                                children: [
                                  Radio(value:cubt.quizlist[0]['agaba${i+1}'].toString() , groupValue: cubt.gropval,
                                      onChanged:(var val){
                                      val=cubt.gropval;
                              })
                                ],
                              ) ,
                            ),
                          );
                        }
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
      ),
    );
  }
}
