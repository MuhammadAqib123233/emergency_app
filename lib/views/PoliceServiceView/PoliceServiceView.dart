import 'package:flutter/material.dart';
import 'package:emergency_app/resources/elevatedButton.dart';
import 'package:emergency_app/utills/Colors.dart';
import 'package:emergency_app/view_model/PoliceViewModel.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';

class PoliceServicesView extends StatelessWidget {
  const PoliceServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PoliceViewModel>.nonReactive(
      viewModelBuilder: () => PoliceViewModel(),
     // onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, viewModel, _) => Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
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
                
                Lottie.network('https://assets5.lottiefiles.com/private_files/lf30_on08s9yq.json',),
                
                elevatedButton(
                  onpress: (){
                    viewModel.navigateToPoliceGoogleCurrentLocation();
                  },
                  txt1: 'FIGHT / FIRE',color: AppColors.RedColor,),
                SizedBox(height: 10,),
                elevatedButton(
                  onpress: (){
                    viewModel.navigateToPoliceGoogleCurrentLocation();
                  },
                  txt1: 'ROBBERY',color: AppColors.RedColor,),
                SizedBox(height: 10,),
                elevatedButton(
                  onpress: (){
                    viewModel.navigateToPoliceGoogleCurrentLocation();
                  },
                  txt1: 'HARASSEMENT',color: AppColors.RedColor,),
                SizedBox(height: 10,),
              ]),
          ),
        ),
      ),
    )
    );
  }
}

/** */