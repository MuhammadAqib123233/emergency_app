
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:emergency_app/App/App.locator.dart';
import 'package:emergency_app/App/App.router.dart';
import 'package:stacked/stacked.dart';
import 'package:emergency_app/views/Home/pages/page1.dart';
import 'package:emergency_app/views/Home/pages/page2.dart';
import 'package:emergency_app/views/Home/pages/page3.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel{

     List<Widget> pages = <Widget>[
  Page1(),
  page2(),
  fireStore()
];

    int _selectedIndex = 0;
    int get selectedIndex => _selectedIndex;
  
  void onItemTapped(int index) {
    _selectedIndex = index;
    rebuildUi();
    }
      
    
     final _navigationService = locator<NavigationService>();
     final auth = FirebaseAuth.instance;
   
  navigateToAmbulanceServiceView() {
    _navigationService.navigateToAmbulanceServiceView();
  }
  navigateToFireBridageServiceView() {
    _navigationService.navigateToFireBridageServiceView();
  }
  navigateToPoliceServicesView() {
    _navigationService.navigateToPoliceServicesView();
  }
  navigateToLoginView() {
    _navigationService.navigateToLoginView();
  }


  logout(){
    auth.signOut().then((value){
        navigateToLoginView();
    }).onError((error, stackTrace){
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }
}