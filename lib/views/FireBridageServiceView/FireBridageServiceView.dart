import 'package:flutter/material.dart';
import 'package:emergency_app/resources/elevatedButton.dart';
import 'package:emergency_app/utills/Colors.dart';
import 'package:emergency_app/view_model/FireBrigadeViewModel.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';

class FireBridageServiceView extends StatelessWidget {
  const FireBridageServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FireBrigadeViewModel>.nonReactive(
      viewModelBuilder: () => FireBrigadeViewModel(),
      //onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, viewModel, _) => Scaffold(
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [SizedBox(height: 40,),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios,color: AppColors.blackColor,)),),
            SizedBox(height: 70,),
            Lottie.network('https://assets2.lottiefiles.com/packages/lf20_VL65dagC71.json',),
            
            elevatedButton(
              onpress: (){
                viewModel.navigateToFireBrigadeGoogleCurrentLocation();
              },
              txt1: 'FIRE',color: AppColors.RedColor,),
            SizedBox(height: 10,),
            elevatedButton(
              onpress: (){
                viewModel.navigateToFireBrigadeGoogleCurrentLocation();
              },
              txt1: 'CYLINDER BLAST',color: AppColors.RedColor,),
            SizedBox(height: 10,),
            elevatedButton(
              onpress: (){
                viewModel.navigateToFireBrigadeGoogleCurrentLocation();
              },
              txt1: 'SHORT CIRCUIT',color: AppColors.RedColor,),
            SizedBox(height: 10,),
          ]),
      ),
    )
    );
  }
}

/** */