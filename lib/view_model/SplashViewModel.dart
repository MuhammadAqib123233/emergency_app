
import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:emergency_app/App/App.locator.dart';
import 'package:emergency_app/App/App.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashViewModel extends BaseViewModel{

   final _navigationService = locator<NavigationService>();
   splashToOnBoard(){
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;

    if (user != null) {
    Timer(const Duration(seconds: 5), () => navigateToHome());    
    } else {
     Timer(const Duration(seconds: 5), () => navigateToOnboardViews()); 
    }
  }
  navigateToOnboardViews() {
    _navigationService.navigateToOnboardView();
  }
  navigateToHome() {
    _navigationService.navigateToHome();
  }
  
 
}