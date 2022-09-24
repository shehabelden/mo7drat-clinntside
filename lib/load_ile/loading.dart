import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubt/cubt.dart';
import 'cubt/stat.dart';

class LodaingBadge extends StatelessWidget {
  const LodaingBadge({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Column(
          children: [
            Image.asset("images/7mada.png"),
              Container(
                width: 300,
                height: 40,
                padding:const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    width: .1,

                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: BlocProvider(
                  create: (context)=>MainLoadeCubt(),
                  child: BlocConsumer<MainLoadeCubt,MainLoadState>(
                    listener: (c,i){},
                    builder: (c,i) {
                      var cubt=MainLoadeCubt.get(c);
                      cubt.determinateIndicator();
                      return LinearProgressIndicator(
                        value:MainLoadeCubt.get(c).value,
                        backgroundColor: Colors.black,
                        valueColor: AlwaysStoppedAnimation(Colors.deepPurple.shade400),
                        minHeight: 25,
                      );
                    }
                  ),
                ),
              ),
            const  Padding(
              padding: EdgeInsets.only(top: 120),
             child:  Text("تجربة تعلم مميزة لأفضل يهودي ",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                 color: Colors.deepPurple,
              )),
           ),
          ],
        ),
      ),
    );
  }
}
