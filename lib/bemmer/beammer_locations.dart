import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:untitled/almohdrate/mohrahte_home.dart';
import 'package:untitled/auth_file/sign_up.dart';
import 'package:untitled/profile/prof_ui.dart';
import '../almohdrate/bdf.dart';
import '../almohdrate/main_mohdrate.dart';
import '../auth_file/login_check.dart';
import '../auth_file/login_ui.dart';
import '../home_badge/main_home.dart';
import '../the_best/the_best.dart';
class HomeLocation extends BeamLocation<BeamState>{
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final pathPatterns = [
      const BeamPage(
        child: LoginCheck(),
        key: ValueKey('/'),
      ),
    ];
    if (state.uri.pathSegments.contains('login')) {
      pathPatterns.add(
        const BeamPage(
          key: ValueKey('/login'),
          child: Login_Ui(),
        ),
      );
    }
    if (state.uri.pathSegments.contains('signup')) {
      pathPatterns.add(
       const BeamPage(
          key: ValueKey('/signup'),
          child: Sign_up(),
        ),
      );
      }
    if (state.uri.pathSegments.contains('main_home')) {
      pathPatterns.add(
        const BeamPage(
          key: ValueKey('/main_home'),
          child: MainHome(),
        ),
      );
    }
    if (state.uri.pathSegments.contains('the-Best')) {
      pathPatterns.add(
        const  BeamPage(
          key: ValueKey('the-Best'),
          child: TheBest(),
        ),
      );
    }
    if (state.uri.pathSegments.contains('moad')){
      pathPatterns.add(
         const BeamPage(
          key: ValueKey('moad'),
          child: MoharateHome(),
        ),
      );
    }
    if (state.uri.pathSegments.contains('profile')) {
      pathPatterns.add(
        const  BeamPage(
          key: ValueKey('profile'),
          child: ProfMain(),
        ),
      );
    }
    // final String? madaname = state.pathParameters['mada'];
    // if (madaname != null) {
    //   pathPatterns.add(
    //       BeamPage(
    //         key: ValueKey('mada/$madaname'),
    //         child: MainMohdrate(madaname:madaname),
    //       )
    //   );
    // }
      if (state.uri.pathSegments.contains('sessions')){
        pathPatterns.add(
         const BeamPage(
            key: ValueKey('sessions'),
            child:Pdf(pdfname:"a"),
          ),
      );
      }
    if (state.uri.pathSegments.contains('a5tbar')){
      pathPatterns.add(
          const BeamPage(
            key: ValueKey('a5tbar'),
            child:Pdf(pdfname:"a"),
          ),
      );
    }
    return pathPatterns;
  }
  @override
  // TODO: implement pathPatterns
  List<Pattern> get pathPatterns => [
    '/',
    '/login',
    '/signup',
    '/main_home',
    '/moad/:mada',
    "/profile",
    "/the-Best",
    '/sessions',
    "moad/a5tbar"
  ];
}