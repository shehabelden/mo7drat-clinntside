import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/style/Button.dart';
import '../style/MainTextField.dart';
import '../style/colormanger.dart';
import 'Usermodel.dart';
import 'login_logic.dart';
class Login_Ui extends StatefulWidget {
  const Login_Ui({Key? key}) : super(key: key);
  @override
  State<Login_Ui> createState() => _Login_UiState();
}
class _Login_UiState extends State<Login_Ui> {
  TextEditingController  email=TextEditingController();
  TextEditingController  password =TextEditingController();
  final _login=Login();
  Widget build(BuildContext context){
    return Material(
      child: Column(
           children: [
                Container(
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width,
                  decoration:const BoxDecoration(
                    image: DecorationImage(
                      image:AssetImage("images/cover1.png"),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
             Column(
               children: [
             Padding(
             padding: const EdgeInsets.all(0.0),
             child: Container(
               height: MainTextField.hieght*MediaQuery.of(context).size.height,
               width: MainTextField.width*MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(MainTextField.borderall*MediaQuery.of(context).size.height),
                 border: Border.all(
                 ),
                   ),
               child: TextField(
                   style:const TextStyle(
                   ),
                   controller: email,
                   decoration:const InputDecoration(
                     border: InputBorder.none,
                     hintText: "اسم المستخدم",
                     hintStyle:TextStyle(
                       fontSize: 20,
                     ),
                   ),
             ),
             )),
                 Padding(
                     padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height/11),
                     child: Container(
                       height: MainTextField.hieght*MediaQuery.of(context).size.height,
                       width: MainTextField.width*MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(MainTextField.borderall*MediaQuery.of(context).size.height),
                           border: Border.all(
                           ),
                         ),
                       child: TextField(
                         style:const TextStyle(
                         ),
                         controller: password,
                         decoration:const InputDecoration(
                           border: InputBorder.none,
                           hintText: "كلمة السر",
                           hintStyle:TextStyle(
                             fontSize: 20,
                           ),
                         ),
                         textAlign: TextAlign.right,
                       ),
                     ),
                 ),
               ],
             ),
             Padding(
               padding: EdgeInsets.only(top:MediaQuery.of(context).size.height/15),
               child: InkWell(
                 child: Container(
                   height: MainBoutton.hight*MediaQuery.of(context).size.height,
                   width:MediaQuery.of(context).size.width*MainBoutton.width ,
                   alignment: Alignment.center,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(MainBoutton.border*MediaQuery.of(context).size.height),
                     color:MainBoutton.prime,
                   ),
                   child: Text("تسجيل الدخول",style: TextStyle(
                     fontSize:17 ,
                     color:ColorManger.scandreyText,
                     fontWeight: FontWeight.bold,
                   ),),
                 ),
                 onTap: () async{
                   Usermodel user=await _login.login(email.text, password.text);
                   SharedPreferences _prame=await SharedPreferences.getInstance();
                   final prame= _prame.getString(user.token);
                   print(prame.toString());
                 },
               ),
             ),
           ],
         ),
    );
  }
}
