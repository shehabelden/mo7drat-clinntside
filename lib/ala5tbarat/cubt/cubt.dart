import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Dio/dio_get.dart';
import 'package:untitled/ala5tbarat/cubt/state.dart';
class MainMohdrateCubt extends Cubit<Maina5tbareState> {
  MainMohdrateCubt() : super(InitA5tbarState());
  static MainMohdrateCubt get(context) => BlocProvider.of(context);
  String gropval="";
  List sortquizlist=[];
  List quizlist=[];
  String val ="";
  void getlist(sessionname){
    if(sortquizlist.isEmpty){
    DioHelper.getData(url:"mohdratemain/akhtbar/$sessionname").then((value){
      sortquizlist=value.data["akhtbar"];
      for(int i=0;i<=sortquizlist.length;i++){
        if(sortquizlist[i]!=null){
          quizlist.add(sortquizlist[i]);
        }
      }}
    );
    print(quizlist);
    }}
  }
