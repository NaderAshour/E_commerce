import 'dart:io';

import 'package:e_commerce/Authentcation.dart';
import 'package:e_commerce/Items.dart';
import 'Data.dart';
class Management{
 WelcomeAndChoose() {
  print(
      "                                       WELCOME IN OUR E-Commerce                         ");
  print(
      '               1-New User                                               2-Existing user '
                                          '3-Exit'                                                      );

  print(
      '   ________________________________________________________________________________________________________________________');}

 Items? item;
 choose1(){
  NewUser();

 }
 choose2(){
  AlreadyExisting();

 }
 choose3(){
  print('you are welcome');

 }
 NewUser(){
  print('you should make an account first,so let\'s fill some info');
  print('Enter your name ');
  String name =stdin.readLineSync().toString();
  print('Enter your age ');
  double age =double.parse(stdin.readLineSync().toString());
  print('Enter your id ');
  int id =int.parse(stdin.readLineSync().toString());
  print('Enter your adderss ');
  String address =stdin.readLineSync().toString();
  print('Enter your E-Mail ');
  String email =stdin.readLineSync().toString().toUpperCase();
  print('Enter your password ');
  String password =stdin.readLineSync().toString().toUpperCase();
  Authentaction a=Authentaction(name: name,id: id,age: age,address: address,email: email,password: password);
  Data.users.add(a);
  print('Done ');
  print('Are you 1-seller   2-Buyer ');
  int ans =int.parse(stdin.readLineSync().toString());
  if(ans==1){
   Sell();
   print('do you want to sell again?:(Y/N)');
   String? ans=stdin.readLineSync();
   while(ans=='Y'||ans=='y'){
    Sell();
    print('do you want to sell again? (Y/N)');
    String ?ans=stdin.readLineSync();
    if(ans=='N'||ans=='n'){
     print('                                            thank you');
     break;
    }
   }
  }
  if(ans==2){
   Buy();
   print('do you want to buy again?:(Y/N)');
   String? ans=stdin.readLineSync();
   while(ans=='Y'||ans=='y'){
    Sell();
    print('do you want to buy again? (Y/N)');
    String ?ans=stdin.readLineSync();
    if(ans=='N'||ans=='n'){
     print('                                            thank you');
     break;
    }
   }
  }
  /* ShowCtegoriesData();
    print('please,Type the category you want');
    String categoryname=stdin.readLineSync().toString().toUpperCase();
    for (int i = 0; i < Data.items.length; i++) {
     if (Data.items[i].categoryname == categoryname) {
      print(Data.items[i]);
     }
    }
    print('type the item you want to add to chart');
    String itembought=stdin.readLineSync().toString().toUpperCase();
    for (int i = 0; i < Data.items.length; i++) {
     if (Data.items[i].itemname == itembought) {
      Data.chart.add(Data.items[i]);
      print('done.. you added{${Data.items[i]}}to the chart');
      print('Add to Favourite ?: y/n');
      String? ans =stdin.readLineSync();
      if (ans=='y' || ans=='Y'){
     Data.Favourites.add(Data.items[i]);
      }
      else print('                  ok');
     }
    }
    print('Ok, you should pay ${item!.price}');
    print('you will pay 1-cash  2-credit!!');
    int ans=int.parse(stdin.readLineSync().toString());
    if(ans==1){
     print('ok you will pay it for the delivery man');

    }
    if(ans==2){
     print('please enter your password again');
     String pass=stdin.readLineSync().toString().toUpperCase();
     if(a.password==pass){
      print('enter last three digits on your card, and pay the money for the product');
      print('done');
     }
     else {
      print('wrong password ');
     }
    }

 }*/

 }
 AlreadyExisting(){
  print('Enter your Name');
  String name=stdin.readLineSync().toString().toUpperCase();
  print('please,enter your Email');
  String email=stdin.readLineSync().toString().toUpperCase();
  print('please,enter your password');
  String pass=stdin.readLineSync().toString().toUpperCase();

  for(int i=0;i<Data.users.length;i++){
   if(Data.users[i].name == name){

    if(Data.users[i].email==email){
     if(Data.users[i].password==pass){
      print('Welcome'
          'what are you need '
          '1-sell   2-buy   3-show favourites  4-show your chart '
      );
      int choise=int.parse(stdin.readLineSync().toString());
      if(choise==1){
       Sell();
       print('do you want to sell again?:(Y/N)');
       String? ans=stdin.readLineSync();
       while(ans=='Y'||ans=='y'){
        Sell();
        print('do you want to sell again? (Y/N)');
        String ?ans=stdin.readLineSync();
        if(ans=='N'||ans=='n'){
         print('                                            thank you');
         break;
        }
       }
      }
      if(choise==2){
       Buy();
       print('do you want to buy again?:(Y/N)');
       String? ans=stdin.readLineSync();
       while(ans=='Y'||ans=='y'){
        Sell();
        print('do you want to buy again? (Y/N)');
        String ?ans=stdin.readLineSync();
        if(ans=='N'||ans=='n'){
         print('                                            thank you');
         break;
        }
       }
      }
      if(choise==3){
       print(Data.Favourites);
      }
      if(choise==4){
       print(Data.chart);
      }

     }
     else print('wrong password');
    }
    else print('wrong email');

   }
   else print('wrong name');
  }
 }
 ShowCtegoriesData(){
  for(int i=0;i<=Data.categories.length;i++){
   print('${i+1}-${Data.categories[i]}');
  }
 }
 Buy(){
  ShowCtegoriesData();
  print('please,Type the category you want');
  String categoryname=stdin.readLineSync().toString().toUpperCase();
  for (int i = 0; i < Data.items.length; i++) {
   if (Data.items[i].categoryname == categoryname) {
    print(Data.items[i]);
   }
  }
  print('type the item you want to add to chart');
  String itembought=stdin.readLineSync().toString().toUpperCase();
  for (int i = 0; i < Data.items.length; i++) {
   if (Data.items[i].itemname == itembought) {
    Data.chart.add(Data.items[i]);
    print('done.. you added{${Data.items[i]}}to the chart');
    print('Add to Favourite ?: y/n');
    String? ans =stdin.readLineSync();
    if (ans=='y' || ans=='Y'){
     Data.Favourites.add(Data.items[i]);
    }
    else print('                  ok');
   }
  }
  print('Ok, you should pay ${item!.price}');
  print('you will pay 1-cash  2-credit!!');
  int ans=int.parse(stdin.readLineSync().toString());
  if(ans==1){
   print('ok you will pay it for the delivery man');
   if(ans==2){
    print('please enter your password ');
    String pass=stdin.readLineSync().toString().toUpperCase();
    for(int i=0;i<Data.users.length;i++){
     if(Data.users[i].password!=pass){
      print('enter last three digits on your card, and pay the money for the product');
      print('done');
     }
     else {
      print('wrong password ');
     }
    }
   }
  }
 }
 Sell(){
  print('to upload your product ');
  print('Enter the name of Product\'s Category');
  String categoryname = stdin.readLineSync().toString().toUpperCase();
  print('Enter the name of this product');
  String itemname = stdin.readLineSync().toString().toUpperCase();
  print('Enter the  description of product');
  String description = stdin.readLineSync().toString();
  print('enter the size of product , and if not defined enter 0');
  String size=stdin.readLineSync().toString();
  print('enter the price of product ');
  double price=double.parse(stdin.readLineSync().toString());
  print('done..');
  // Categories c= Categories(name: categoryname);
  Items i=Items(categoryname: categoryname,itemname: itemname,description: description,size: size,price: price);
  // Data.categories.add(c);
  Data.categories.add(i.categoryname!);
  Data.items.add(i);
  item=i;
  print(i);
 }
}
