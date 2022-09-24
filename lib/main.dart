import 'package:flutter/material.dart';
import 'package:untitled/Dio/dio_get.dart';
import 'auth_file/login_check.dart';
import 'cache_helper/cache_helper.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  await DioHelper.init();
  await  CacheHelper.init();
  runApp(
   const MaterialApp(
       home:LoginCheck(),
   ),
  );
}