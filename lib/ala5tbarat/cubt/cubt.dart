import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Dio/dio_get.dart';
import 'package:untitled/ala5tbarat/cubt/state.dart';
import 'package:flutter/material.dart';
class Main5tbarCubt extends Cubit<Maina5tbareState> {
  Main5tbarCubt() : super(InitA5tbarState());
  static Main5tbarCubt get(context) => BlocProvider.of(context);
  String ? gropval;
  List  sortquizlist=[];
  List quizlist=[];
  bool  selctedanser=false;
  String val ="";
  List <Color> colorlist=[
    Colors.grey.shade300,
    Colors.green,
    Colors.red,
  ];
  void getlist() async{
    if(sortquizlist.isEmpty){
    await DioHelper.getData(url:"mohdratemain/akhtbar/الإطار المفاهيمي للإقتصاد الكلي.").then((value){
      sortquizlist=value.data["akhtbar"];
      quizlist=sortquizlist[0]["anserrelated"];
      }
    );
    }
    emit(ApiFitch());
  }
}