import 'package:custom_datepicker/screens/demoPage.dart';
import 'package:custom_datepicker/screens/homePage.dart';
import 'package:get/get.dart';

class DatePickerController extends GetxController{

  var today=DateTime.now().obs;
  var today1=DateTime.now().obs;
  var today2=DateTime.now().obs;
  var isClicked=true.obs;
  var index=0;

  void selectedDay(DateTime day,DateTime focusedDay){
    if(index==0){
    today.value=day;}
    else if(index==1){
      today1.value=day;
    }
    else{
      today2.value=day;
    }
  }


}