import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Dio/dio_get.dart';
import 'package:untitled/ala5tbarat/cubt/cubt.dart';
import 'package:untitled/almohdrate/cubt/cubt.dart';
import 'package:untitled/auth_file/cubt/cubt.dart';
import 'auth_file/login_check.dart';
import 'cache_helper/cache_helper.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  await DioHelper.init();
  await  CacheHelper.init();
  runApp(
   MultiBlocProvider(
     providers: [
       BlocProvider(create:(context) =>auth_badge_cubt()),
       BlocProvider(create: (context)=>Main5tbarCubt(),),
       BlocProvider(create:(context)=>MainMohdrateCubt(),),
     ],
     child: const MaterialApp(
         home:LoginCheck(),
     ),
   ),
  );
}