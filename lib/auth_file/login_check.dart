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
    return AnimatedSplashScreen(
      backgroundColor: Colors.white,
      duration: 3000,
      centered: true,
      splashIconSize: 800,
      splash: const LodaingBadge(),
      nextScreen: BlocProvider(
              create:(contex)=>auth_badge_cubt(),
              child: BlocConsumer<auth_badge_cubt,main_auth_state>(
                  listener: (c,i){},
                  builder: (c,i) {
                    auth_badge_cubt.get(c).token();
                    final cubt=auth_badge_cubt.get(c);
                     cubt.token_key;
                    if(cubt.token_key==null){
                      return const first_view();
                    }else{
                      return const MainHome();
                    }
                  }
              )
      ),
    );
  }
}
