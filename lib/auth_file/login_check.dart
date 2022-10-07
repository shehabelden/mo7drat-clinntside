import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/auth_file/first_view.dart';
import 'package:untitled/home_badge/main_home.dart';
import '../load_ile/loading.dart';
import 'cubt/cubt.dart';
import 'cubt/state.dart';
class LoginCheck extends StatelessWidget {
  const LoginCheck({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final cubt=auth_badge_cubt.get(context);
    cubt.token();
    return AnimatedSplashScreen(
      backgroundColor: Colors.white,
      duration: 3000,
      centered: true,
      splashIconSize: 800,
      splash: const LodaingBadge(),
      nextScreen: BlocConsumer<auth_badge_cubt,main_auth_state>(
          listener: (c,i){},
          builder: (c,i) {
             // cubt.token_key
                // print("test");
            if(cubt.token_key==null){
              return const first_view();
            }else{
              return const MainHome();
            }
          }
      ),
    );
  }
}
