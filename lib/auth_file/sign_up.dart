import 'package:flutter/material.dart';
import 'package:untitled/auth_file/sin_up_logic.dart';

import '../style/Button.dart';
import '../style/MainTextField.dart';
class Sign_up extends StatefulWidget {
  const Sign_up({Key? key}) : super(key: key);
  @override
  State<Sign_up> createState() => _Sign_upState();
}
class _Sign_upState extends State<Sign_up> {
  @override
  TextEditingController  username=TextEditingController();
  TextEditingController  email=TextEditingController();
  TextEditingController  password =TextEditingController();
  TextEditingController  password2 =TextEditingController();
  final _sign_up=sign_up();
  Widget build(BuildContext context) {
    return Material(
      child:Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:60.0,bottom:40 ),
              child: Text("إنشاء حساب",style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      child: Text("البريد الالكتروني",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepPurpleAccent.shade100,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height*MainTextField.hieght,
                        width: MediaQuery.of(context).size.width*MainTextField.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*MainTextField.badinghight),
                          border: Border.all(
                          ),
                        ),
                        child: TextField(
                          controller: email,
                          style: TextStyle(
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "",
                            hintStyle:TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        )),
                  ],
                )
            ),
            Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      child: Text("الاسم",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.deepPurpleAccent.shade100,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*MainTextField.hieght,
                      width: MediaQuery.of(context).size.width*MainTextField.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*MainTextField.badinghight),
                        border: Border.all(
                        ),
                      ),
                      child: TextField(
                        controller:username ,
                        style: TextStyle(
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "",
                          hintStyle:TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      child: Text("الرقم السري",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.deepPurpleAccent.shade100,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*MainTextField.hieght,
                      width: MediaQuery.of(context).size.width*MainTextField.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*MainTextField.badinghight),
                        border: Border.all(
                        ),
                      ),
                      child: TextField(
                        controller:password ,
                        style: TextStyle(
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "",
                          hintStyle:TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                )
            ),
            Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      child: Text("تأكيد الرقم  السري",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.deepPurpleAccent.shade100,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*MainTextField.hieght,
                      width: MediaQuery.of(context).size.width*MainTextField.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*MainTextField.badinghight),
                        border: Border.all(
                        ),
                      ),
                      child: TextField(
                        controller: password2,
                        style: TextStyle(
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "",
                          hintStyle:TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                )
            ),
            Padding(
              padding: const EdgeInsets.only(top: 74.0),
              child: Container(
                height: MainBoutton.hight*MediaQuery.of(context).size.height,
                width: MainBoutton.smallwidth*MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: MainBoutton.prime,
                    borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*MainBoutton.border)
                ),
                alignment: Alignment.center,
                child: InkWell(
                   onTap: ()async{
                     await _sign_up.sign_up_logic(username.text, email.text, password.text, password2.text);
                   },
                  child:const Text("تأكيد",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 29,
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
