

import 'package:emergency_app/App/App.locator.dart';
import 'package:emergency_app/App/App.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnBoardViewModel extends BaseViewModel{
  final _navigationService = locator<NavigationService>();


  navigateToLoginView() {
    _navigationService.navigateToLoginView();
  }
}