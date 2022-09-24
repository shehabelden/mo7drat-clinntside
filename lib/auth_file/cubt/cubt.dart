import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/auth_file/cubt/state.dart';
class auth_badge_cubt extends Cubit<main_auth_state>{
  auth_badge_cubt() : super(init_auth_state());
  static  auth_badge_cubt get(context)=>BlocProvider.of(context);
   String ? token_key;
  void token(){
    SharedPreferences.getInstance().then((value){
      token_key=value.getString("token_pref");
    });
    // print(token_key!);
    emit(login_state());
  }
}