import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:untitled/almohdrate/cubt/state.dart';
import 'cubt/cubt.dart';
class Pdf extends StatelessWidget {
  final String pdfname;
  const Pdf({Key? key,required this.pdfname}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context)=>MainMohdrateCubt(),
      child: BlocConsumer<MainMohdrateCubt,MainMohdrateState> (
          listener: (c,i){},
          builder: (c,i) {
            var cubt=MainMohdrateCubt.get(c);
              cubt.getBdf(pdfname);
            if(cubt.pdf!=null){
              return  SfPdfViewer.network(cubt.pdf!,);
        }
            else{
              cubt.getBdf(pdfname);
              return const Text("");
            }
          }
      ),
    );
  }
}
