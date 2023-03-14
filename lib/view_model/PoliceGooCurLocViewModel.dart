import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';

class PoliceGooCurLocViewModel extends BaseViewModel {

  double latituee = 0;
  double longitudee = 0;

final Completer<GoogleMapController> controler = Completer(); //instance of a google map

    final policeUser = FirebaseFirestore.instance.collection('PoliceRequest');    

      getPoliceReqWithCordinate(name,num,Case)async
      {
         final id = DateTime.now().millisecondsSinceEpoch.toString();
                policeUser.doc(id).set({
                  'Request' : 'Request',
                  'Latitudee' : latituee.toString(),
                  'Longitudee' : longitudee.toString(),
                  'Name' : name.toString(),
                  'Number' : num.toString(),
                  'Case' : Case.toString(),
                  'Id' : id.toString(),
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

        latituee = value.latitude;
        longitudee = value.longitude;


            
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
     TextEditingController caseContr = TextEditingController();

  String? emailVerifi(String? value){
                  if(value == null || value.isEmpty){
                    return "Enter Email";
                  }
                  else{
                    return null;
                 }
                 
  }
   String? passVerifi(String? value){
                  if(value == null || value.isEmpty){
                    return "Enter PAssword";
                  }
                  if(value.length<11){
                    return 'length should be abouve 6';
                  }
                  else{
                    return null;
                 }
  }
  String? caseVerifi(String? value){
                  if(value == null || value.isEmpty){
                    return "Enter PAssword";
                  }
                  else{
                    return null;
                 }
  }

    void policeReqSend(BuildContext context){
      if ((Form.of(context).validate())) {
        getPoliceReqWithCordinate(nameContr.text.toString(),numContr.text.toString(),caseContr.text.toString());
      }
    }
        
}