import 'package:flutter/material.dart';
import 'package:emergency_app/resources/elevatedButton.dart';
import 'package:emergency_app/utills/Colors.dart';
import 'package:emergency_app/view_model/AmbulanceViewModel.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';

class AmbulanceServiceView extends StatelessWidget {
  const AmbulanceServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AmbulanceViewModel>.nonReactive(
      viewModelBuilder: () => AmbulanceViewModel(),
      //onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, viewModel, _) => Scaffold(
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           SizedBox(height: 40,),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios,color: AppColors.blackColor,)),),
            SizedBox(height: 70,),
            Lottie.network('https://assets3.lottiefiles.com/packages/lf20_sy2feyup.json',),
            SizedBox(height: 35,),
            elevatedButton(
              onpress: (){
                viewModel.navigateToAmbulGoogleCurrentLocation();
              },
              txt1: 'MEDICAL EMERGENCY',color: AppColors.RedColor,),
            SizedBox(height: 10,),
            elevatedButton(
              onpress: (){
                viewModel.navigateToAmbulGoogleCurrentLocation();
              },
              txt1: 'FIRE EMERGENCY',color: AppColors.RedColor,),
            SizedBox(height: 10,),
            elevatedButton(
              onpress: (){
                viewModel.navigateToAmbulGoogleCurrentLocation();
              },
              txt1: 'ACCIDENT EMERGENCY',color: AppColors.RedColor,),
            SizedBox(height: 10,),
          ]),
      ),
    )
    );
  }
}

/** */

