import 'package:e_commerce/Users.dart';

class Authentaction extends Users{
  String? email;
  String? password;
  Authentaction({String ?name,int? id,double? age,String? address,this.email,this.password}):super(name: name,id: id,age: age,address: address);


}