import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:emergency_app/App/App.locator.dart';
import 'package:emergency_app/services/AuthService.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';

class UserGooCurLocViewModel extends BaseViewModel {
  
  double Latituee = 0;
  double Longitudee = 0;

final Completer<GoogleMapController> controler = Completer(); //instance of a google map

    final ambulanceUser = FirebaseFirestore.instance.collection('AmbulanceRequest');
    final policeUser = FirebaseFirestore.instance.collection('Police');
    final fireBrigadeeUser = FirebaseFirestore.instance.collection('FireBrigade');
    
  
      // ignore: avoid_types_as_parameter_names
      getReqWithCordinate(name,num)async
      {
         final id = DateTime.now().millisecondsSinceEpoch.toString();
         print(Latituee.toString());
         print(Longitudee.toString());
                ambulanceUser.doc(id).set({
                  'Request' : 'Request',
                  'Latitudee' : Latituee.toString(),
                  'Longitudee' : Longitudee.toString(),
                  'Name' : name.toString(),
                  'Number' : num.toString()
                }).then((value){
                  print("Request sent");
                }).onError((error, stackTrace){
                  print(error.toString());
                });
                rebuildUi();
      }

  final  CameraPosition lgoogleplex = const CameraPosition(
    target: LatLng(33.6844, 72.0479),
    zoom: 14
    );

    final List<Marker> marker =  <Marker>[
      const Marker(
        markerId: MarkerId('1'),
        position: LatLng(33.6844, 72.0479),
        infoWindow: InfoWindow(title: 'the title of marker'),
        )
    ];

  
  

    Future<Position> getuserCurLocation()async{
      await Geolocator.requestPermission().then((value){

      }).onError((error, stackTrace){
        if (kDebugMode) {
          print('error : $error');
        }
      });
      return await Geolocator.getCurrentPosition();
    } 

    getLocation()async{
      getuserCurLocation().then((value)async{

        Latituee = value.latitude;
        Longitudee = value.longitude;


            
            if (kDebugMode) {
              print("values");
            }
            if (kDebugMode) {
              print("${value.latitude} ${value.longitude}");

            }
            marker.add(
              Marker(markerId: MarkerId('2'),
              position: LatLng(value.latitude, value.longitude),
              infoWindow: InfoWindow(
                title: 'my current location',
              )
              )
            );
            CameraPosition positions = CameraPosition(
              zoom: 14,
              target: LatLng(value.latitude,value.longitude));

              final GoogleMapController controller =await controler.future;

              controller.animateCamera(CameraUpdate.newCameraPosition(positions));
             rebuildUi();
          }).onError((error, stackTrace){
            if (kDebugMode) {
              print('error$error');
            }
          });
    }
//////////////////////////////////////////////

    TextEditingController nameContr = TextEditingController();
     TextEditingController numContr = TextEditingController();
     final authService = locator<AuthService>();

  String? emailVerifi(String? value){
                  if(value == null || value.isEmpty){
                    return "Enter Email";
                  }
                  if(!value.contains('@')){
                    return 'please Enter valid email';
                  }
                  else{
                    return null;
                 }
                 
  }
   String? passVerifi(String? value){
                  if(value == null || value.isEmpty){
                    return "Enter PAssword";
                  }
                  if(value.length<6){
                    return 'length should be abouve 6';
                  }
                  else{
                    return null;
                 }
  }

    void isSignIn(BuildContext context)async{
      // if (!(Form.of(context)?.validate() ?? false)) {
      //   return;
      // }
      // var res = await runBusyFuture(authService.loginORcreateuser(nameContr.text.toString(), numContr.text.toString()));
      // if (res) {
      //   getReqWithCordinate(nameContr.text.toString(),numContr.text.toString());
      // }
      getReqWithCordinate(nameContr.text.toString(),numContr.text.toString());
    }
        
}