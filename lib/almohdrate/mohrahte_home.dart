import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/almohdrate/main_mohdrate.dart';
import '../style/colormanger.dart';
import 'MoadCard.dart';
import 'cubt/cubt.dart';
import 'cubt/state.dart';
class MoharateHome extends StatelessWidget {
  const MoharateHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return Material(
      color:ColorManger.third,
      child: Padding(
        padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height/20),
        child: Column(
          children: [
            Container(
              height:MediaQuery.of(context).size.height/10,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color:ColorManger.prime,
                borderRadius: BorderRadius.circular((MediaQuery.of(context).size.height/10)/4),
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text("أختر المادة",style:TextStyle(
                      color:ColorManger.primeText,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ) ,),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height/20),
                child: BlocProvider(
                    create: (context)=>MainMohdrateCubt(),
                    child: BlocConsumer<MainMohdrateCubt,MainMohdrateState>(
                      listener: (c,i){},
                      builder: (c,i) {
                        var cubt=MainMohdrateCubt.get(c);
                        cubt.almoad();
                        cubt.count();
                        return Swiper(
                          itemCount: cubt.odd.length,
                          pagination:const SwiperPagination(),
                          itemBuilder:(context, index){
                             return Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                           Expanded(
                                             flex: 1,
                                             child: InkWell(
                                                  onTap:(){
                                                    Navigator.of(context).push(MaterialPageRoute(
                                                      builder: (context) =>MainMohdrate(madaname:cubt.odd[index]["scientific_material_name"]) ,
                                                    ));
                                                    // context.beamToNamed("${cubt.odd[index]["scientific_material_name"]}");
                                                    },
                                                  child: SizedBox(
                                                      height: .29375*MediaQuery.of(context).size.height,
                                                      width:.839*MediaQuery.of(context).size.width,
                                                      child: moadCard(cubt.odd[index],.29375*MediaQuery.of(context).size.height,.839*MediaQuery.of(context).size.width,MediaQuery.of(context).size.height/11)
                                                  ),
                                              ),
                                           ),
                                          Expanded(
                                              flex: 1,
                                              child:cubt.even.length <= index ?   SizedBox(
                                                  height: .29375*MediaQuery.of(context).size.height,
                                                  width:.839*MediaQuery.of(context).size.width,
                                                ):InkWell(
                                                    onTap:(){
                                                      Navigator.of(context).push(MaterialPageRoute(
                                                        builder: (context) =>MainMohdrate(madaname:cubt.odd[index]["scientific_material_name"]) ,
                                                      ));
                                                      // context.beamToNamed("${cubt.odd[index]["scientific_material_name"]}");
                                                      },
                                                    child: SizedBox(
                                                        height: .29375*MediaQuery.of(context).size.height,
                                                        width:.839*MediaQuery.of(context).size.width,
                                                        child: moadCard(cubt.even[index],.29375*MediaQuery.of(context).size.height,.839*MediaQuery.of(context).size.width,MediaQuery.of(context).size.height/11)
                                                    ),
                                                ),
                                            ),
                                        ],
                             );
                                    }
                                    );
                      }
                    ),
                  ),
              ),
            ),
          ],
        ),
      )

                );
  }
}