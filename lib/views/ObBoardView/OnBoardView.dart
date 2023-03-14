
import 'package:flutter/material.dart';
import 'package:emergency_app/resources/ContainerButton.dart';
import 'package:emergency_app/resources/text.dart';
import 'package:emergency_app/utills/Colors.dart';
import 'package:emergency_app/view_model/OnboardViewModel.dart';
import 'package:emergency_app/views/LoginView/loginView.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';

class OnboardView extends StatelessWidget {
  const OnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return ViewModelBuilder<OnBoardViewModel>.nonReactive(
      viewModelBuilder: () => OnBoardViewModel(),
      //onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, viewModel, _) => Scaffold(
      body: Container(
        height: height,
        width: Width,
        child: Column(
          children: [
            Expanded(child: Lottie.network('https://assets2.lottiefiles.com/packages/lf20_9qtheak5.json')),
            textWidget(text: "OUR SERVICES",size:25,color: AppColors.RedColor,fontWeight: FontWeight.bold,),
            const SizedBox(height: 5,),
            textWidget(text: "POLICE",size:25,color: AppColors.blackColor,fontWeight: FontWeight.bold,),
            const SizedBox(height: 5,),
            textWidget(text: "AMBULANCE",size:25,color: AppColors.blackColor,fontWeight: FontWeight.bold,),
            const SizedBox(height: 5,),
            textWidget(text: "FIRE BRIGADE",size:25,color: AppColors.blackColor,fontWeight: FontWeight.bold,),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 90),
              child: ContainerButton(text: "Login", onpress: (){
                viewModel.navigateToLoginView();
                //Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView(),));
              }, radius: BorderRadius.circular(15),color: AppColors.RedColor,size: 25,),
            )
          ]),
      ),
    ),
    );
  }
}

/** */