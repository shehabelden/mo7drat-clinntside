import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/almohdrate/bdf.dart';
import 'package:untitled/almohdrate/cubt/cubt.dart';
import 'package:untitled/almohdrate/cubt/state.dart';
import '../ala5tbarat/a5tbar.dart';
bool isSwitched = false;
class MainMohdrate extends StatelessWidget {
 final String madaname;
 const  MainMohdrate({Key? key,required this.madaname}) : super(key: key);
 @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context)=>MainMohdrateCubt(),
      child: BlocConsumer<MainMohdrateCubt,MainMohdrateState>(
        listener: (c,i){},
        builder: (c,i) {
          var cubt=MainMohdrateCubt.get(c);
          cubt.mada(madaname);
          return Material(
            color: Colors.deepPurple.shade400,
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: Row(
                      children: [
                        Expanded(
                          flex:1,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15.0,right: 60),
                            child: Switch(
                                value: isSwitched,
                                onChanged: (bool value){
                              isSwitched = value;
                            }),
                          ),
                        ),
                         Expanded(
                            flex:2,
                            child: Text(madaname,style:const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height-80,
                    width: MediaQuery.of(context).size.width-40,
                    child: BlocProvider(
                      create:(context)=>MainMohdrateCubt(),
                      child: BlocConsumer<MainMohdrateCubt,MainMohdrateState>(
                        listener:(c,i){},
                        builder: (context,i) {
                          return ListView.builder(
                              itemCount: cubt.almohdratelist.length,
                              itemBuilder: (c,i){
                               return Padding(
                                 padding: const EdgeInsets.only(top: 40.0),
                                 child: Container(
                                   height: MediaQuery.of(context).size.height*.1825,
                                  width: MediaQuery.of(context).size.width*.9166666666666667,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: .1
                                    ),
                                    borderRadius: BorderRadius.circular(40),
                                    color:const Color(0xFFD9D9D9),
                                  ),
                                   child:Column(
                                     children: [
                                       Text(
                                         '${cubt.almohdratelist[i]["session_name"]}',
                                         style:const TextStyle(
                                           fontWeight: FontWeight.bold,
                                           fontSize: 20,
                                         ),
                                         textAlign: TextAlign.center,
                                       ),
                                       SizedBox(
                                         height: MediaQuery.of(context).size.height/13,
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.end,
                                           children: [
                                                Column(
                                                 children:const [
                                                   Text( "عنوان المحاضرة:",style:TextStyle(
                                                     fontWeight: FontWeight.bold,
                                                     fontSize: 17,
                                                   ),
                                                   ),
                                                   Text( "تاريخ المحاضرة :",style:TextStyle(
                                                     fontSize: 17,
                                                     fontWeight: FontWeight.bold,
                                                   ),
                                                   ),
                                                 ],
                                               ),
                                                  Container(
                                                    height: MediaQuery.of(context).size.height/7,
                                                    width:MediaQuery.of(context).size.width/7,
                                                    decoration:const BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage("images/mohdraimage.png",),
                                                        fit: BoxFit.fill
                                                      )
                                                    ),
                                                  ),
                                           ],)
                                         ),
                                       Padding(
                                         padding: const EdgeInsets.only(top:20,right: 20,left: 20),
                                         child: SizedBox(
                                           child: Row(
                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             children: [
                                               InkWell(
                                                 child: Container(
                                                   height:MediaQuery.of(context).size.height*.025,
                                                   width: MediaQuery.of(context).size.width*.20,
                                                   alignment: Alignment.center,
                                                   decoration: BoxDecoration(
                                                     border: Border.all(
                                                         width: .1,
                                                     ),
                                                     borderRadius: BorderRadius.circular(40),
                                                     color: Colors.deepPurpleAccent,
                                                   ),
                                                   child:const Text("اختبار",style: TextStyle(
                                                     color: Colors.white,
                                                   ),
                                                   ),
                                                 ),
                                                 onTap: (){
                                                   Navigator.of(context).push(
                                                       MaterialPageRoute(
                                                         builder: (context) =>const  Akhtbar(),
                                                       ));
                                                 },
                                               ),
                                               InkWell(
                                                 child: Container(
                                                   height:MediaQuery.of(context).size.height*.025,
                                                   width: MediaQuery.of(context).size.width*.20,
                                                   alignment: Alignment.center,
                                                   decoration: BoxDecoration(
                                                     border: Border.all(
                                                         width: .1
                                                     ),
                                                     borderRadius: BorderRadius.circular(40),
                                                     color: Colors.deepPurpleAccent,
                                                   ),
                                                   child:const Text("صوتي",style: TextStyle(
                                                     color: Colors.white,
                                                   ),
                                                   ),
                                                 ),
                                                 onTap: (){
                                                   },
                                               ),
                                               InkWell(
                                                 child: Container(
                                                   height:MediaQuery.of(context).size.height*.025,
                                                   width: MediaQuery.of(context).size.width*.20,
                                                   alignment: Alignment.center,
                                                   decoration: BoxDecoration(
                                                     border: Border.all(
                                                         width: .1
                                                     ),
                                                     borderRadius: BorderRadius.circular(40),
                                                     color: Colors.deepPurpleAccent,
                                                   ),
                                                   child:const Text("pdf",style: TextStyle(
                                                     color: Colors.white,
                                                   ),
                                                   ),
                                                 ),
                                                 onTap:(){
                                                   final String ?a=cubt.almohdratelist[i]["session_name"];
                                                   Navigator.of(context).push(
                                                     MaterialPageRoute(
                                                       builder: (context) => Pdf(pdfname: a!),
                                                     ),
                                                   );
                                                 },
                                               ),
                                             ],
                                           ),
                                         ),
                                       )
                                     ],
                                   ),
                              ),
                               );
                          }
                          );
                        }
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}