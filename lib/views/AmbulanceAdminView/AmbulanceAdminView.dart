import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:emergency_app/resources/text.dart';
import 'package:emergency_app/utills/Colors.dart';
import 'package:lottie/lottie.dart';

// ignore: must_be_immutable
class AmbulanceAdminView extends StatelessWidget {
   AmbulanceAdminView({super.key});
  
  final fireBrigadefireStore = FirebaseFirestore.instance.collection('Ambulance').snapshots();
  CollectionReference ref = FirebaseFirestore.instance.collection('Ambulance');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(height: 15,),
            Lottie.network('https://assets4.lottiefiles.com/packages/lf20_pex2sf.json'),
           SizedBox(height: 50,),

            StreamBuilder<QuerySnapshot>(
              stream: fireBrigadefireStore,
              builder: (context,AsyncSnapshot<QuerySnapshot> snapshot) {
                if(snapshot.connectionState == ConnectionState.waiting){
                  return CircularProgressIndicator();
                }
                if(snapshot.hasError){
                  return Text("Some Error");
                }
                return Expanded(
              child: ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  final title = snapshot.data!.docs[index]['Name'].toString();
                return Column(
                  children: [
                    textWidget(text: "User Credentials",size: 35,color: AppColors.RedColor,),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        textWidget(text:"Name",size: 25,color: AppColors.blackColor,),
                        textWidget(text: snapshot.data!.docs[index]['Name'].toString()),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        textWidget(text:"user Case",size: 25,color: AppColors.blackColor,),
                        textWidget(text: snapshot.data!.docs[index]['Case'].toString()),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        textWidget(text:"User Number",size: 25,color: AppColors.blackColor,),
                        textWidget(text: snapshot.data!.docs[index]['Number'].toString()),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
           fixedSize: const Size(150, 50),
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.redAccent,
            elevation: 0,
            side:  BorderSide(
              width: 2.0,
              color: AppColors.RedColor,
            )),
        child: Text("Accept",style:const TextStyle(fontSize: 18),)),
                          ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
           fixedSize: const Size(150, 50),
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.redAccent,
            elevation: 0,
            side:  BorderSide(
              width: 2.0,
              color: AppColors.RedColor,
            )),
        child: Text("Deny",style:const TextStyle(fontSize: 18),)),
                      ],
                    ),
                    textWidget(text: snapshot.data!.docs[index]['Request'].toString()),
                  ],);
              },),
            );
            },),
            
          ]),
      ),
    );
  }
}