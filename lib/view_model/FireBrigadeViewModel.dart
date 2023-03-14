import 'package:emergency_app/App/App.locator.dart';
import 'package:emergency_app/App/App.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class FireBrigadeViewModel extends BaseViewModel{
   final _navigationService = locator<NavigationService>();
  
  navigateToFireBrigadeGoogleCurrentLocation() {
    _navigationService.navigateToFireBrigadeGoogleCurrentLocation();
  }
}