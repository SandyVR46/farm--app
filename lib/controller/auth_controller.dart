import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryapp/model/user_model.dart';
import 'package:groceryapp/pages/home_page.dart';

class AuthController extends GetxController{
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore db = FirebaseFirestore.instance;
  TextEditingController email = TextEditingController();
  TextEditingController psswrd = TextEditingController();
  TextEditingController repsswrd = TextEditingController();

  TextEditingController logemail = TextEditingController();
  TextEditingController logpsswrd = TextEditingController();
  var loading = false.obs;


  signUp()async{
    try{
      loading.value = true;
      await auth.createUserWithEmailAndPassword(email: email.text, password: psswrd.text);
      await addUser();
      await verifyEmail();
      Get.to(()=>const HomePage());
      loading.value = false;
    }catch(e){
      Get.snackbar("error", "$e");
      loading.value= false;
    }
  }

  addUser()async{
    UserModel user = UserModel(
      email:auth.currentUser?.email,

    );
    await db.collection("users").doc(auth.currentUser?.email).collection("profile").add(user.toMap());
  }

  

  signout()async{
    await auth.signOut();
  }

  signIn() async{
    try{
    await auth.signInWithEmailAndPassword(email: logemail.text, password: logpsswrd.text);
    }catch(e){
      Get.snackbar("error", "$e");
    }
  }

  verifyEmail() async{
    await auth.currentUser?.sendEmailVerification();
    Get.snackbar("email", "send");
  }
  
  
}