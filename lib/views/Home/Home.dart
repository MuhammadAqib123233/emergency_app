import 'package:flutter/material.dart';
import 'package:emergency_app/resources/elevatedButton.dart';
import 'package:emergency_app/utills/Colors.dart';
import 'package:emergency_app/view_model/homeViewModel.dart';
import 'package:stacked/stacked.dart';
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      //onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, viewModel, _) => Scaffold(
      body: viewModel.pages.elementAt(viewModel.selectedIndex),
      
      bottomNavigationBar:  BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.camera),
        label: 'Location',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.chat),
        label: 'Profile',
      ),
    ],
    currentIndex: viewModel.selectedIndex, //New
  onTap: viewModel.onItemTapped,
    selectedItemColor: AppColors.RedColor,
  ),
    ),
    );
  }
}


/**
 *  */

/** */

