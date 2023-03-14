import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:emergency_app/services/ToastService.dart';

class AddFireStore extends StatefulWidget {
      AddFireStore({super.key});

  @override
  State<AddFireStore> createState() => _AddFireStoreState();
}

class _AddFireStoreState extends State<AddFireStore> {
  final nameDataFireStoreControlller = TextEditingController();
  final emailDataFireStoreControlller = TextEditingController();

  bool loading = false;
  final fireStore = FirebaseFirestore.instance.collection('User');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Add To FireStore Data"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 70,),
      
            TextFormField(
              maxLines: 2,
              controller: nameDataFireStoreControlller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Name"),
            ),
            SizedBox(height: 20,),
             TextFormField(
              maxLines: 2,
              controller: emailDataFireStoreControlller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Email"),
            ),
            SizedBox(height: 30,),
            
            ElevatedButton(
              onPressed: (){
                final id = DateTime.now().millisecondsSinceEpoch.toString();
                fireStore.doc(id).set({
                  'Name' : nameDataFireStoreControlller.text.toString(),
                  'Email' : emailDataFireStoreControlller.text.toString(),
                  'id' : id
                }).then((value){
         //             FirebaseServices().ToastMessge("data added");
                }).onError((error, stackTrace){
                  ToastService().tOtoastMessge(error.toString());
                });
            },
             child: Text("Add",style: TextStyle(color: Colors.black,fontSize: 20),))
          ]),
      ),
    );
  }
}