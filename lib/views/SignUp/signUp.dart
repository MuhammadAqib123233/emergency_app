import 'package:flutter/material.dart';
import 'package:emergency_app/resources/ContainerButton.dart';
import 'package:emergency_app/resources/text.dart';
import 'package:emergency_app/utills/Colors.dart';
import 'package:emergency_app/view_model/SignupViewModel.dart';
import 'package:stacked/stacked.dart';

class signUp extends StatelessWidget {
  const signUp({super.key});

   @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignUpViewModel>.reactive(
      viewModelBuilder: () => SignUpViewModel(),
    //onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, viewModel, _) => Scaffold(
      body: Form(
        child: Builder(builder: (context){
          return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 75),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  const SizedBox(height: 13,),
                  
                  const SizedBox(height: 20,),
                  textWidget(text: "Sign Up HERE",size: 30,color: AppColors.RedColor,) ,
                  const SizedBox(height: 10,),
                              
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        TextFormField(
                          controller: viewModel.emailContr,
                           
                         validator:  viewModel.emailVerifi,
                          decoration: const InputDecoration(
                            border : OutlineInputBorder(),
                            hintText: "Enter Email",),
                        ),
                        const SizedBox(height: 15,),
                        textWidget(text: "password",size: 25,color: AppColors.RedColor,),
                        const SizedBox(height: 15,),
                        TextFormField(
                          controller: viewModel.passwordContr,
                         validator:  viewModel.passVerifi,
                            //obscureText: isSellected,
                          decoration: const InputDecoration(
                            //  suffixIcon: GestureDetector(
                            //    onTap: (){},
                            //     child: Icon(isSellected ? Icons.visibility_off : Icons.visibility,color: AppColors.blackColor,)),
                            border : OutlineInputBorder(),
                            hintText: "Enter password",),
                        ),
                      ],
                    ),
                  ),
                  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Rool : ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColors.blackColor,
                              ),
                            ),
                             DropdownButton<String>(
                              dropdownColor: Colors.blue[900],
                              isDense: true,
                              isExpanded: false,
                              iconEnabledColor: AppColors.blackColor,
                              focusColor: AppColors.blackColor,
                              items: viewModel.optionss.map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(
                                    dropDownStringItem,
                                    style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (newValueSelected) {
                                  viewModel.currentItemSelected = newValueSelected!;
                                  viewModel.rool = newValueSelected;
                              },
                              value: viewModel.currentItemSelected,
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textWidget(text: "Don't Have an Account?",size: 18,color: AppColors.blackColor,),
                      InkWell(
                        onTap: (){
                          viewModel.navigateToLoginView();
                        },
                        child: textWidget(text: "Login In", size: 18,color: AppColors.RedColor,)),
                    ],
                  ),
                  const SizedBox(height: 25,),
                  ContainerButton(
                    text: "Sign Up", 
                    onpress: (){
                        viewModel.isSignUp(context);
                      //viewModel.formvalidate(viewModel.email.text.toString(),viewModel.password.text.toString());
                    }, 
                    radius: BorderRadius.circular(15),
                    
                    color: AppColors.RedColor,),
              ]),
          ),
        );
        } ,),
      ),
    ),
    );
  }
}
/** */

/**import 'package:flutter/material.dart';
 
import 'package:emergency_app/resources/ContainerButton.dart';
import 'package:emergency_app/resources/text.dart';
import 'package:emergency_app/utills/Colors.dart';
import 'package:emergency_app/views/Home/Home.dart';
import 'package:emergency_app/views/SignUp/signUp.dart';

class LoginView extends StatefulWidget {
   LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
 TextEditingController Password = TextEditingController();

 TextEditingController email = TextEditingController();

  bool isSellected = true;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    return Scaffold(
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 75),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  const SizedBox(height: 13,),
                  
                  const SizedBox(height: 20,),
                  textWidget(text: "LOGIN HERE",size: 30,color: AppColors.RedColor,) ,
                  const SizedBox(height: 10,),
                              
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textWidget(text: "Email",size: 25,color: AppColors.RedColor,),
                        const SizedBox(height: 15,),
                        TextFormField(
                          controller: email,
                           
                         validator: (value) {
                            if(value!.isEmpty){
                              return "Enter Email";
                            }
                           if(!value.contains("@")){
                            return "Add @";
                           }
                           else{
                            return null;
                           }
                        }, 
                          decoration: const InputDecoration(
                            border : OutlineInputBorder(),
                            hintText: "Enter Email",),
                        ),
                        const SizedBox(height: 15,),
                        textWidget(text: "password",size: 25,color: AppColors.RedColor,),
                        const SizedBox(height: 15,),
                        TextFormField(
                          controller: Password,
                         validator: (value) {
                            if(value!.isEmpty){
                              return "Enter Password";
                            }
                           if(value.length<5){
                            return "length should be above 5";
                           }
                           else{
                            return null;
                           }
                        },
                            obscureText: isSellected,
                          decoration: InputDecoration(
                             suffixIcon: GestureDetector(
                               onTap: (){},
                                child: Icon(isSellected ? Icons.visibility_off : Icons.visibility,color: AppColors.blackColor,)),
                            border : const OutlineInputBorder(),
                            hintText: "Enter password",),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textWidget(text: "Don't Have an Account?",size: 18,color: AppColors.blackColor,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => signUp(),));
                        },
                        child: textWidget(text: " SignUp",size: 18,color: AppColors.RedColor,)),
                    ],
                  ),
                  const SizedBox(height: 25,),
                  ContainerButton(
                    text: "LOGIN", 
                    onpress: (){
                      if (formkey.currentState!.validate()) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => home(),));
                    }
                      
                    }, 
                    radius: BorderRadius.circular(15),
                    
                    color: AppColors.RedColor,),
              ]),
          ),
        ),
      ),
    );
  }
} */