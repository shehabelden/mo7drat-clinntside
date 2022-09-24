import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/load_ile/cubt/stat.dart';
import 'dart:async';

class MainLoadeCubt extends Cubit<MainLoadState>{
  MainLoadeCubt(): super(InitLoadState());
  static MainLoadeCubt get(context)=> BlocProvider.of(context);
  double value=0;
  determinateIndicator(){
    Timer.periodic(
        const  Duration(milliseconds:200),
            (Timer timer){
            if(value == 1) {
              timer.cancel();
            }
            else {
              value = value + 0.1;
            }
          });
    emit(LoadState());
        }
  }