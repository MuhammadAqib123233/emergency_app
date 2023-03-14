import 'package:flutter/material.dart';
import 'package:emergency_app/resources/text.dart';
import 'package:emergency_app/utills/Colors.dart';
import 'package:emergency_app/view_model/SplashViewModel.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final Width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return ViewModelBuilder<SplashViewModel>.nonReactive(
      viewModelBuilder: () => SplashViewModel(),
      onModelReady: (viewModel) => viewModel.splashToOnBoard(),
      builder: (context, viewModel, _) => Scaffold(
        body: Container(
          height: height,
          width: Width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               Lottie.network('https://assets10.lottiefiles.com/packages/lf20_GqeaVh.json',width: Width,height: height*0.6),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textWidget(text: "GET",size:25,color: AppColors.RedColor,fontWeight: FontWeight.bold,),
                    const SizedBox(height: 5,),
                    textWidget(text: "HELPED FROM US",size:25,color: AppColors.RedColor,fontWeight: FontWeight.bold,),
                    const SizedBox(height: 5,),
                    textWidget(text: "NOW",size:25,color: AppColors.RedColor,fontWeight: FontWeight.bold,),
                  ],
                ),
              ),
              Lottie.network('https://assets2.lottiefiles.com/packages/lf20_mn0yeqfs.json',height: height*0.2,width: Width),
            ]),
        ),
    ));
  }
}

/** */