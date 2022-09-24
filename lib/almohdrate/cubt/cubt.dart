import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/almohdrate/cubt/state.dart';
import '../../Dio/dio_get.dart';
class MainMohdrateCubt extends Cubit<MainMohdrateState>{
  MainMohdrateCubt(): super(InitMohadratState());
  static MainMohdrateCubt get(context)=> BlocProvider.of(context);
  List almoadlist=[];
  List odd=[];
  List even=[];
  String ? pdf;
  List almohdratelist=[];
  void almoad() async{
    if(almoadlist.isEmpty){
   await DioHelper.getData(url:"mohdratemain/maoad").then((value){
      almoadlist=value.data;
    });}
   emit(AlmoadState());
  }
  void mada(String madaname)async{
    if(almohdratelist.isEmpty){
      await DioHelper.getData(url:"mohdratemain/maoad/$madaname").then((value){
        almohdratelist=value.data["session"];
      });}
    emit(AlmoadaState());
  }
  void count(){
    if(even.isEmpty &&odd.isEmpty){
      for(int i=0;i<=almoadlist.length-1;i++){
        if(i%2==0){
          even.add(almoadlist[i]);
        }else{
          odd.add(almoadlist[i]);
        }
    }}
    emit(CountState());
  }
  void getBdf(name)async{
    await DioHelper.getData(url:"mohdratemain/mohadra/${name}").then((value){
      pdf=value.data["session"];
      print(pdf);
    });
    emit(Bdf());
  }
}