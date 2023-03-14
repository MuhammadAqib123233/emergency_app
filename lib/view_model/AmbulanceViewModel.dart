
import 'package:emergency_app/App/App.locator.dart';
import 'package:emergency_app/App/App.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AmbulanceViewModel extends BaseViewModel{
  
  final _navigationService = locator<NavigationService>();
  
  navigateToAmbulGoogleCurrentLocation() {
    _navigationService.navigateToAmbulGoogleCurrentLocation();
  }
}