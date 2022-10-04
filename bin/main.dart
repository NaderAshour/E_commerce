import 'dart:io';

import 'package:e_commerce/Mangement.dart';


void main(List<String> arguments) {
  Management m =Management();
  m.WelcomeAndChoose();
  int choise=int.parse(stdin.readLineSync().toString());
  if(choise==1){
    m.choose1();

    main(arguments);
  }
  if(choise==2){
    m.choose2();
    main(arguments);
  }


  if(choise==3){
    m.choose3();

  }

}