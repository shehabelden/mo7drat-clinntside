import 'package:flutter/material.dart';
import '../almohdrate/mohrahte_home.dart';
import '../profile/prof_ui.dart';
import '../style/MainTextField.dart';
import '../style/colormanger.dart';
import '../the_best/the_best.dart';
List <Color> color=const[
  Color(0xFF2D0D65),
  Color(0xFFD9D9D9),
  Color(0xFF263238),
];
List <String> text=[
  'المحاضرات',
  'الملف الشخصي',
  'The best'
];
List <String> images=[
  "images/graduation-cap.png",
  "images/user.png",
  "images/the_best.png",
];
const List dir=[
  MoharateHome(),
  ProfMain(),
  TheBest(),
];
class MainHome extends StatelessWidget {
  const MainHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
          color: ColorManger.prime,
          child: Padding(
            padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height/9),
            child: SizedBox(
              width: double.infinity,
              height:double.infinity,
              child: Column(
                children: <Widget>[
                  Image.asset("images/cover6.png",
                      fit:BoxFit.cover,
                      ),
                  const Padding(
                     padding: EdgeInsets.only(top: 10.0,bottom: 40.0),
                     child:  Text("محاضراتي",
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 40,
                     ),
                     ),
                   ),
                  Container(
                    height: MediaQuery.of(context).size.height*.227,
                    width: double.infinity,
                    alignment:Alignment.center,
                    decoration:BoxDecoration(
                      color:ColorManger.scandrey,
                      border: Border.all(
                        color:const Color(0xFFD9D9D9),
                        width:5 ,
                      )
                    ),
                    child:ListView.builder(
                        itemCount: dir.length,
                        scrollDirection: Axis.horizontal,
                        physics:const NeverScrollableScrollPhysics(),
                        itemBuilder: (c,i){
                      return Padding(
                        padding:  EdgeInsets.only(left:.075*MediaQuery.of(context).size.width),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap:()=>Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => dir[i],
                              )),
                              child: Container(
                                height: .1075*MediaQuery.of(context).size.height,
                                width: .22*MediaQuery.of(context).size.width,
                                decoration:BoxDecoration(
                                  color:const Color(0xFFD9D9D9),
                                  border: Border.all(
                                    width: .1,
                                  ),
                                  borderRadius: BorderRadius.circular((.1075*MediaQuery.of(context).size.height)/2),
                                ),
                                child: Image.asset(images[i]),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(top:0.01*MediaQuery.of(context).size.height),
                              child: Text(text[i],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: ColorManger.primeText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:.190*MediaQuery.of(context).size.height),
                    child: Container(
                      height: MainTextField.hieght*MediaQuery.of(context).size.height,
                      alignment: Alignment.bottomCenter,
                      child:const Text("كيفية إستخدام التطبيق",
                        style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
