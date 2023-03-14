import 'package:flutter/material.dart';
import 'package:emergency_app/resources/elevatedButton.dart';
import 'package:emergency_app/utills/Colors.dart';
import 'package:emergency_app/view_model/homeViewModel.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
      viewModelBuilder: () => HomeViewModel(),
     // onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, viewModel, _) => Center(
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100,),
          Lottie.network('https://assets2.lottiefiles.com/packages/lf20_kjoghjmo.json',),
          
          elevatedButton(
            onpress: () => viewModel.navigateToAmbulanceServiceView(),
            txt1: 'AMBULANCE SERVICE',color: AppColors.RedColor,),
          const SizedBox(height: 10,),
          elevatedButton(
            onpress: () => viewModel.navigateToPoliceServicesView(),
            txt1: 'POLICE SERVICE',color: AppColors.RedColor,),
          const SizedBox(height: 10,),
          elevatedButton(
            onpress: () => viewModel.navigateToFireBridageServiceView(),
            txt1: 'FIRE BIRGADE SERVICE',color: AppColors.RedColor,),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                onPressed: (){
                  viewModel.logout();
                },
                icon:const Icon(Icons.logout),),),
          )
        ]),
    )
    );
  }
}
