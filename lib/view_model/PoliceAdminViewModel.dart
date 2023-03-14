import 'package:flutter_geocoder/geocoder.dart';
import 'package:stacked/stacked.dart';


class PoliceAdminViewModel extends BaseViewModel {

   convertCordinateInToAdress(lat,lon)async{
    
    final cordinates = Coordinates(lat,lon);
    var adress = await Geocoder.local.findAddressesFromCoordinates(cordinates);

    var firstt  = adress.first;
    return firstt.featureName.toString() + firstt.addressLine.toString(); 
  }

     
  

}