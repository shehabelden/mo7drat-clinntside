import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:untitled/auth_file/login_ui.dart';
import 'package:untitled/auth_file/sign_up.dart';
class first_view extends StatefulWidget {
  const first_view({Key? key}) : super(key: key);
  @override
  State<first_view> createState() => _first_viewState();
}
class _first_viewState extends State<first_view> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Padding(
            padding: const EdgeInsets.only(top: 120.0),
            child: Container(
              height: 800,
              width: 120,
              child: Column(
                children: [
                  Container(
                    height: 385,
                    width: double.infinity,
                    // color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Image.asset("images/cover2.png",fit: BoxFit.cover,
                      width:double.infinity ,),
                    ),
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Login_Ui(),));

                          // Beamer.of(context).beamToNamed("/login");
                        },
                        child: Container(
                          height: 45,
                          width: 220,
                          alignment: Alignment.center,
                          child: Text("تسجيل الدخول",style:const TextStyle(
                            fontSize:29 ,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),),
                          color:Colors.deepPurple.shade300,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 120.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                builder: (context) => Sign_up(),));
                          },
                          child: Container(
                            height: 45,
                            width: 220,
                              alignment: Alignment.center,
                            child: Text("إنشاء حساب",style: TextStyle(
                              fontSize:29 ,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),),
                            color:Colors.deepPurple.shade300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
      );
  }
}
