import 'package:flutter/material.dart';
class TheBest extends StatelessWidget {
  const TheBest({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurple.shade300,
      child:Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: 300,
                padding:const EdgeInsets.only(top: 20,bottom: 20),
                child: Image.asset("images/cover4.png",
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey.shade400,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (c,i){
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Text("$i. shehab elden ehab hesan abas $i",
                            textAlign: TextAlign.center,
                            style:const TextStyle(
                              fontSize: 20,
                            ),
                        ),
                      );
                }),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: (){},
                child: Container(
                  color: Colors.deepPurple.shade300,
                  height: 80,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child:const Text("ليك مكان في القمة أسعى انت بس",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}