import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Usermodel.dart';
class Login extends ChangeNotifier{
  Future<Usermodel> login(String email, String password) async {
    final api="http://192.168.1.10:8000/auth/login/";
    final data ={
      "username":email,
      "password":password,
    };
    final dio=Dio();
    Response res=await dio.post(api,data:data);
    if(res.statusCode == 200){
      final body=res.data;
      SharedPreferences pref=await SharedPreferences.getInstance();
      pref.setString("token_pref",body["token"]);
      print("suc");
      return Usermodel(name: email, token: body["token"]);
    }else{
      throw Exception('Failed to load');
    }

  }

}