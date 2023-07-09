import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  String? email, psswrd, repsswrd;
  UserModel({this.email, this.psswrd, this.repsswrd});
  factory UserModel.fromMap(DocumentSnapshot map){
    return UserModel(
      email: map["email"],
      psswrd: map["psswrd"],
      repsswrd: map["repsswrd"]
    );
  }

  Map<String, dynamic> toMap(){
    return{
      "email":email,
      "psswrd": psswrd,
      "repsswrd" :repsswrd,
    };
  }
}