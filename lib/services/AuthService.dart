import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:emergency_app/App/App.locator.dart';
import 'package:emergency_app/App/App.router.dart';
import 'package:stacked_services/stacked_services.dart';

class AuthService {


    // Future<bool> loginORcreateuser(String email, String password,[rool]) async{
    //   try {
    //   await _signIn(email, password);
    //   return true;
    //   } catch (e) {
    //     try {
    //       await _signUp(email, password,rool);
    //   return true;
    //     } catch (e) {
    //       return false;
    //     }
    //   }
    // }

    signIn(String email, String password) async {
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        route();
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }
    
  }

     signUp(String email, String password, String rool) async {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestoreOfSignUp(email, rool)})
          .catchError((e) {});
  }
   ////////////// ////////////////////
   ///
   final _navigationService = locator<NavigationService>();
  
  navigateToFireBrigadeAdminView() {
    _navigationService.navigateToFireBrigadeAdminView();
  }
  navigateToPoliceAdminView() {
    _navigationService.navigateToPoliceAdminView();
  }
  navigateToAmbulanceAdminView() {
    _navigationService.navigateToAmbulanceAdminView();
  }

  navigateToLoginView() {
    _navigationService.navigateToLoginView();
  }
  navigateToHome() {
    _navigationService.navigateToHome();
  }
  /////////////////////////////////////////////////////////////////////////////
   void route() {
    User? user = FirebaseAuth.instance.currentUser;
    var kk = FirebaseFirestore.instance
            .collection('Users')
            .doc(user!.uid)
            .get()
            .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        if (documentSnapshot.get('rool') == "firebrigadeAdmin") {
          //fire brigade
          navigateToFireBrigadeAdminView();
        }
         if (documentSnapshot.get('rool') == "userAdmin") {
          //fire brigade
          navigateToHome();
        }
         if (documentSnapshot.get('rool') == "policeAdmin") {
          //fire brigade
          navigateToPoliceAdminView();
        }
         if (documentSnapshot.get('rool') == "ambulanceAdmin") {
          //fire brigade
          navigateToAmbulanceAdminView();
        }
        else{
       //user
        }
      } else {
        print('Document does not exist on the database');
      }
    });
  }

  // void signIn(String email, String password) async {
  //     try {
  //       UserCredential userCredential =
  //           await FirebaseAuth.instance.signInWithEmailAndPassword(
  //         email: email,
  //         password: password,
  //       );
  //       route();
  //     } on FirebaseAuthException catch (e) {
  //       if (e.code == 'user-not-found') {
  //         print('No user found for that email.');
  //       } else if (e.code == 'wrong-password') {
  //         print('Wrong password provided for that user.');
  //       }
  //     }
    
  // }

///////////////////////////////////////////////////////////////////////////////
  postDetailsToFirestoreOfSignUp(String email, String rool) async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    var user = FirebaseAuth.instance.currentUser;
    CollectionReference ref = FirebaseFirestore.instance.collection('UserRoles');
    ref.doc(user!.uid).set({'email': email, 'rool': rool});
      navigateToLoginView();
  }
}