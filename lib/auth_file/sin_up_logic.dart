import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
class sign_up extends ChangeNotifier{
  Future<dynamic> sign_up_logic(String username,String email, String password,String password2) async {
    final api="http://192.168.1.10:8000/auth/register/";
    final data ={
      "username":username,
      "email":email,
      "password":password,
      // "password2":password2,
    };
    final dio=Dio();
    Response res=await dio.post(api,data:data);
    if(res.statusCode == 200){
     return res;
    }else{
      throw Exception('Failed to load');
    }

  }

}